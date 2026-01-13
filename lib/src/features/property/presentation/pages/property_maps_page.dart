import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rentara_property_clone/src/core/injector/injector.dart';
import 'package:rentara_property_clone/src/core/location/presentation/bloc/location_bloc.dart';
import 'package:rentara_property_clone/src/core/location/presentation/bloc/location_event.dart';
import 'package:rentara_property_clone/src/core/location/presentation/bloc/location_state.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_padding.dart';
import 'package:rentara_property_clone/src/core/theme/app_radius.dart';
import 'package:rentara_property_clone/src/core/utils/helper.dart';
import 'package:rentara_property_clone/src/core/widgets/appbar_with_search_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/header_persistent.dart';
import 'package:rentara_property_clone/src/core/widgets/loading_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/shimmer_loading_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/show_information_dialog.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_map/property_map_bloc.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_map/property_map_event.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_map/property_map_state.dart';
import 'package:rentara_property_clone/src/features/property/presentation/widgets/header_filter_widget.dart';
import 'package:rentara_property_clone/src/features/property/presentation/widgets/list_filters_property_widget.dart';
import 'package:rentara_property_clone/src/features/property/presentation/widgets/property_card_widget.dart';

class PropertyMapsPage extends StatefulWidget {
  const PropertyMapsPage({super.key});

  @override
  State<PropertyMapsPage> createState() => _PropertyMapsPageState();
}

class _PropertyMapsPageState extends State<PropertyMapsPage> {
  final Completer<GoogleMapController> _gmapController =
      Completer<GoogleMapController>();
  late ColorScheme _colorScheme;
  late Helper _helper;

  double initialLat = -6.175126961872583;
  double initialLng = 106.82711059593191;

  @override
  void initState() {
    super.initState();
    _helper = injector<Helper>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<LocationBloc>().add(
        const LocationEvent.getCurrentLocation(),
      );
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _colorScheme = Theme.of(context).colorScheme;
  }

  @override
  void dispose() {
    _gmapController.future.then((value) {
      try {
        value.dispose();
      } catch (_) {}
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          // LOCATION
          BlocListener<LocationBloc, LocationState>(
            listener: (context, state) {
              state.whenOrNull(
                success: (location) async {
                  initialLat = location.lat;
                  initialLng = location.long;

                  if (_gmapController.isCompleted) {
                    final controller = await _gmapController.future;
                    controller.animateCamera(
                      CameraUpdate.newLatLng(
                        LatLng(location.lat, location.long),
                      ),
                    );
                  }
                },
                failed: (_) {
                  showInformationDialog(
                    context,
                    description:
                        "To find nearby properties, please enable your location for a better experience.",
                    onTap: () => context.pop(),
                  );
                },
              );
            },
          ),

          // MAP PROPERTY
          BlocListener<PropertyMapBloc, PropertyMapState>(
            listener: (context, state) {
              state.whenOrNull(
                failedGetClustering: (_, message) {
                  _helper.showToast(
                    message: message,
                    backGroundColor: _colorScheme.error,
                  );
                },
                failedGetBulkProperty: (_, message) {
                  _helper.showToast(
                    message: message,
                    backGroundColor: _colorScheme.error,
                  );
                },
                failedGetNextBulkProperty: (_, message) {
                  _helper.showToast(
                    message: message,
                    backGroundColor: _colorScheme.error,
                  );
                },
              );
            },
          ),
        ],
        child: Stack(
          children: [
            // CONTENT MAP & LIST
            _PropertyMapsContent(
              gmapController: _gmapController,
              initialLat: initialLat,
              initialLng: initialLng,
            ),

            // APPBAR SEARCH
            AppbarWithSearchWidget(
              usingWithAppbar: false,
              readOnly: true,
              onSearch: (String p1) {},
              onTap: () => context.pushNamed("quick-search"),
            ),
          ],
        ),
      ),
    );
  }
}

class _PropertyMapsContent extends StatelessWidget {
  final Completer<GoogleMapController> gmapController;
  final double initialLat;
  final double initialLng;

  const _PropertyMapsContent({
    required this.gmapController,
    required this.initialLat,
    required this.initialLng,
  });

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, _) {
        return [
          // MAP SCROLLED
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverPersistentHeader(
              pinned: true,
              delegate: HeaderPersistent(
                maxHeight: .7.sh,
                minHeight: .4.sh,
                child: _MapArea(
                  gmapController: gmapController,
                  initialLat: initialLat,
                  initialLng: initialLng,
                ),
              ),
            ),
          ),
        ];
      },
      body: Builder(
        builder: (context) {
          return NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification.depth != 0) return false;

              final metrics = notification.metrics;
              if (metrics.extentAfter < 200 && metrics.pixels > 0) {
                final state = context.read<PropertyMapBloc>().state;

                state.maybeWhen(
                  loadingGetBulkProperty: (_) {},
                  loadingGetNextBulkProperty: (_) {},
                  orElse: () {
                    context.read<PropertyMapBloc>().add(
                      PropertyMapEvent.getNextBulkProperty(),
                    );
                  },
                );
              }
              return false;
            },
            child: CustomScrollView(
              slivers: [
                // INJECTOR
                SliverOverlapInjector(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                    context,
                  ),
                ),

                // HEADER & LIST
                const SliverToBoxAdapter(child: _SheetHeaderWidget()),

                // PROPERTY LIST
                const _PropertyListSection(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _MapArea extends StatelessWidget {
  final Completer<GoogleMapController> gmapController;
  final double initialLat;
  final double initialLng;

  const _MapArea({
    required this.gmapController,
    required this.initialLat,
    required this.initialLng,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationBloc, LocationState>(
      buildWhen: (previous, current) {
        return current.maybeMap(
          loading: (_) => true,
          success: (_) => true,
          failed: (_) => true,
          orElse: () => false,
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          success: (_) => _buildMapWidget(context),
          failed: (_) => _buildMapWidget(context),
          orElse: () => const _MapLoading(),
        );
      },
    );
  }

  Widget _buildMapWidget(BuildContext context) {
    return RepaintBoundary(
      child: Stack(
        children: [
          // GOOGLE MAP
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(initialLat, initialLng),
              zoom: 15,
            ),
            zoomControlsEnabled: false,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            compassEnabled: false,
            onMapCreated: (controller) {
              if (!gmapController.isCompleted) {
                gmapController.complete(controller);
              }
            },
            onCameraIdle: () async {
              final controller = await gmapController.future;
              LatLngBounds bounds = await controller.getVisibleRegion();
              debugPrint(
                "Visible Bounds: ${bounds.southwest} to ${bounds.northeast}",
              );

              if (context.mounted) {
                final swLat = bounds.southwest.latitude;
                final swLng = bounds.southwest.longitude;

                final neLat = bounds.northeast.latitude;
                final neLng = bounds.northeast.longitude;

                context.read<PropertyMapBloc>().add(
                  PropertyMapEvent.getClustering(
                    swLat: swLat,
                    swLng: swLng,
                    neLat: neLat,
                    neLng: neLng,
                  ),
                );
              }
            },
            gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
              Factory<OneSequenceGestureRecognizer>(
                () => EagerGestureRecognizer(),
              ),
            },
          ),

          // MY LOCATION BUTTON
          Positioned(
            bottom: 10.h,
            right: 10.w,
            child: _MyLocationButton(
              gmapController: gmapController,
              initialLat: initialLat,
              initialLng: initialLng,
            ),
          ),
        ],
      ),
    );
  }
}

class _MyLocationButton extends StatelessWidget {
  final Completer<GoogleMapController> gmapController;
  final double initialLat;
  final double initialLng;

  const _MyLocationButton({
    required this.gmapController,
    required this.initialLat,
    required this.initialLng,
  });

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: () async {
        context.read<LocationBloc>().add(
          const LocationEvent.getCurrentLocation(),
        );
      },
      child: Container(
        height: 35.h,
        width: 35.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.commonRadius),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Icon(
          Icons.my_location,
          color: AppColors.primaryColor600,
          size: 20.sp,
        ),
      ),
    );
  }
}

class _MapLoading extends StatelessWidget {
  const _MapLoading();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.neutral100,
      child: const Center(child: ShimmerLoadingWidget()),
    );
  }
}

class _SheetHeaderWidget extends StatelessWidget {
  const _SheetHeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40.w,
          height: 6.h,
          margin: EdgeInsets.only(top: 8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: AppColors.neutral300,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
          child: const HeaderFilterWidget(withCloseButton: false),
        ),
        const Divider(color: AppColors.neutral300),
        Padding(
          padding: AppPadding.pagePadding,
          child: const ListFilterPropertyWidget(),
        ),
        SizedBox(height: 8.h),
      ],
    );
  }
}

class _PropertyListSection extends StatelessWidget {
  const _PropertyListSection();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PropertyMapBloc, PropertyMapState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadingGetBulkProperty: (_) =>
              SliverFillRemaining(child: LoadingWidget(height: 50.h)),
          orElse: () {
            final listProperty = state.property?.data ?? [];
            return listProperty.isEmpty
                ? SliverFillRemaining(child: LoadingWidget(height: 50.h))
                : SliverPadding(
                    padding: AppPadding.pagePadding,
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        final data = listProperty[index];
                        return RepaintBoundary(
                          child: PropertyCardWidget(property: data),
                        );
                      }, childCount: listProperty.length),
                    ),
                  );
          },
        );
      },
    );
  }
}
