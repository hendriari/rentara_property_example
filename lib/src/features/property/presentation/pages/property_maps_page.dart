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
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_filter/property_filter_bloc.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_filter/property_filter_state.dart';
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
  GoogleMapController? _gmapController;
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
    _gmapController?.dispose();
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

                  if (_gmapController != null) {
                    _gmapController?.animateCamera(
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
                failedGetClustering: (_, _, message) {
                  _helper.showToast(
                    message: message,
                    backGroundColor: _colorScheme.error,
                  );
                },
                failedGetBulkProperty: (_, _, message) {
                  _helper.showToast(
                    message: message,
                    backGroundColor: _colorScheme.error,
                  );
                },
                failedGetNextBulkProperty: (_, _, message) {
                  _helper.showToast(
                    message: message,
                    backGroundColor: _colorScheme.error,
                  );
                },
              );
            },
          ),

          // PROPERTY FILTER
          BlocListener<PropertyFilterBloc, PropertyFilterState>(
            listener: (context, state) {
              state.whenOrNull(
                updatedFilter: (status, location, type, minPrice, maxPrice) {
                  context.read<PropertyMapBloc>().add(
                    PropertyMapEvent.getBulkProperty(
                      status: status,
                      type: type?.firstOrNull,
                      minPrice: minPrice,
                      maxPrice: maxPrice,
                    ),
                  );
                },
                resetFilter: (_, _, _, _, _) {
                  context.read<PropertyMapBloc>().add(
                    PropertyMapEvent.getBulkProperty(),
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
              onMapCreated: (controller) =>
                  setState(() => _gmapController = controller),
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
  final GoogleMapController? gmapController;
  final ValueChanged<GoogleMapController> onMapCreated;
  final double initialLat;
  final double initialLng;

  const _PropertyMapsContent({
    required this.gmapController,
    required this.onMapCreated,
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
                  onMapCreated: onMapCreated,
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
                  loadingGetBulkProperty: (_, _) => false,
                  loadingGetNextBulkProperty: (_, _) => false,
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
  final GoogleMapController? gmapController;
  final ValueChanged<GoogleMapController> onMapCreated;
  final double initialLat;
  final double initialLng;

  const _MapArea({
    required this.gmapController,
    required this.onMapCreated,
    required this.initialLat,
    required this.initialLng,
  });

  @override
  Widget build(BuildContext context) {
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
            onMapCreated: onMapCreated,
            onCameraIdle: () async {
              if (gmapController != null) {
                LatLngBounds bounds = await gmapController!.getVisibleRegion();
                if (context.mounted) {
                  final swLat = bounds.southwest.latitude;
                  final swLng = bounds.southwest.longitude;

                  final neLat = bounds.northeast.latitude;
                  final neLng = bounds.northeast.longitude;

                  debugPrint(
                    "==>> swLat: $swLat, swLng: $swLng, neLat: $neLat, neLng: $neLng",
                  );

                  context.read<PropertyMapBloc>().add(
                    PropertyMapEvent.getClustering(
                      swLat: swLat,
                      swLng: swLng,
                      neLat: neLat,
                      neLng: neLng,
                    ),
                  );
                }
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
            child: const _MyLocationButton(),
          ),
        ],
      ),
    );
  }
}

class _MyLocationButton extends StatelessWidget {
  const _MyLocationButton();

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

class _SheetHeaderWidget extends StatelessWidget {
  const _SheetHeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // DIVIDER
        Container(
          width: 40.w,
          height: 6.h,
          margin: EdgeInsets.only(top: 8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: AppColors.neutral300,
          ),
        ),

        // HEADER FILTER
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
          child: const HeaderFilterWidget(withCloseButton: false),
        ),

        const Divider(color: AppColors.neutral300),

        // FILTER PROPERTY
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
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<PropertyMapBloc, PropertyMapState>(
      builder: (context, state) {
        final listProperty = state.property?.data ?? [];
        final isLoading = state.maybeWhen(
          loadingGetNextBulkProperty: (_, _) => true,
          orElse: () => false,
        );
        return state.maybeWhen(
          loadingGetBulkProperty: (property, _) =>
              const SliverFillRemaining(child: Center(child: LoadingWidget())),
          loadingGetClustering: (property, _) =>
              const SliverFillRemaining(child: Center(child: LoadingWidget())),
          orElse: () {
            if (listProperty.isEmpty) {
              return SliverFillRemaining(
                child: Center(
                  child: Text(
                    "No properties found in this area",
                    style: textTheme.bodyMedium,
                  ),
                ),
              );
            }
            return _buildList(listProperty, isLoading);
          },
        );
      },
    );
  }

  Widget _buildList(List data, bool isLoading) {
    return SliverPadding(
      padding: AppPadding.pagePadding,
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          if (index >= data.length) {
            return ShimmerLoadingWidget(
              child: PropertyCardWidget(property: null),
            );
          }

          final item = data[index];
          return RepaintBoundary(child: PropertyCardWidget(property: item));
        }, childCount: data.length + (isLoading ? 1 : 0)),
      ),
    );
  }
}
