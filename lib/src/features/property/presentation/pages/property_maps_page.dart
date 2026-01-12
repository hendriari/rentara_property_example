import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rentara_property_clone/src/core/location/presentation/bloc/location_bloc.dart';
import 'package:rentara_property_clone/src/core/location/presentation/bloc/location_event.dart';
import 'package:rentara_property_clone/src/core/location/presentation/bloc/location_state.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_padding.dart';
import 'package:rentara_property_clone/src/core/theme/app_radius.dart';
import 'package:rentara_property_clone/src/core/widgets/appbar_with_search_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/header_persistent.dart';
import 'package:rentara_property_clone/src/core/widgets/shimmer_loading_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/show_information_dialog.dart';
import 'package:rentara_property_clone/src/features/property/presentation/widgets/header_filter_widget.dart';
import 'package:rentara_property_clone/src/features/property/presentation/widgets/list_filters_property_widget.dart';

class PropertyMapsPage extends StatefulWidget {
  const PropertyMapsPage({super.key});

  @override
  State<PropertyMapsPage> createState() => _PropertyMapsPageState();
}

class _PropertyMapsPageState extends State<PropertyMapsPage> {
  final Completer<GoogleMapController> _gmapController =
      Completer<GoogleMapController>();
  // late TextTheme _textTheme;

  // Default coordinates (Jakarta)
  double initialLat = -6.175126961872583;
  double initialLng = 106.82711059593191;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<LocationBloc>().add(
        const LocationEvent.getCurrentLocation(),
      );
    });
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   _textTheme = Theme.of(context).textTheme;
  // }

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
      body: BlocListener<LocationBloc, LocationState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (location) async {
              initialLat = location.lat;
              initialLng = location.long;

              if (_gmapController.isCompleted) {
                final controller = await _gmapController.future;
                controller.animateCamera(
                  CameraUpdate.newLatLng(LatLng(location.lat, location.long)),
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
        child: Stack(
          children: [
            _buildContentWidget(),
            const AppbarWithSearchWidget(usingWithAppbar: false),
          ],
        ),
      ),
    );
  }

  Widget _buildContentWidget() {
    return NestedScrollView(
      headerSliverBuilder: (context, _) {
        return [
          // MAP CONTENT
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverPersistentHeader(
              pinned: true,
              delegate: HeaderPersistent(
                maxHeight: .7.sh,
                minHeight: .4.sh,
                child: _buildMapArea(),
              ),
            ),
          ),
        ];
      },
      body: Builder(
        builder: (context) {
          return CustomScrollView(
            slivers: [
              SliverOverlapInjector(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                  context,
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: _buildDetailMapWidget(),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildMapArea() {
    return BlocBuilder<LocationBloc, LocationState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (_) => _buildMapWidget(),
          failed: (_) => _buildMapWidget(),
          orElse: () => _buildMapLoading(),
        );
      },
    );
  }

  Widget _buildMapWidget() {
    return Stack(
      children: [
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
            if (!_gmapController.isCompleted) {
              _gmapController.complete(controller);
            }
          },
          onCameraIdle: () async {
            final controller = await _gmapController.future;
            LatLngBounds bounds = await controller.getVisibleRegion();
            debugPrint(
              "Visible Bounds: ${bounds.southwest} to ${bounds.northeast}",
            );
          },
          gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
            Factory<OneSequenceGestureRecognizer>(
              () => EagerGestureRecognizer(),
            ),
          },
        ),

        Positioned(bottom: 10.h, right: 10.w, child: _buildMyLocationButton()),
      ],
    );
  }

  Widget _buildMyLocationButton() {
    return Bounceable(
      onTap: () async {
        final controller = await _gmapController.future;
        controller.animateCamera(
          CameraUpdate.newLatLng(LatLng(initialLat, initialLng)),
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

  Widget _buildMapLoading() {
    return Padding(
      padding: AppPadding.pagePadding,
      child: ShimmerLoadingWidget(),
    );
  }

  Widget _buildDetailMapWidget() {
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
          child: HeaderFilterWidget(withCloseButton: false),
        ),
        const Divider(color: AppColors.neutral300),
        Padding(
          padding: AppPadding.pagePadding,
          child: const ListFilterPropertyWidget(),
        ),
      ],
    );
  }
}
