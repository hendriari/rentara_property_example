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
  late TextTheme _textTheme;
  double initialLat = -6.175126961872583;
  double initialLng = 106.82711059593191;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<LocationBloc>().add(LocationEventCheckService());
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textTheme = Theme.of(context).textTheme;
  }

  @override
  void dispose() {
    _gmapController.future.then((value) => value.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LocationBloc, LocationState>(
        listener: (context, state) {
          state.whenOrNull(
            serviceDisabled: () {
              showInformationDialog(
                context,
                description:
                    "to access your location to find nearby properties. please enable your location for a better experience.",
                onTap: () => context.pop(),
              );
            },
            serviceEnabled: () {
              context.read<LocationBloc>().add(
                LocationEventGetCurrentLocation(),
              );
            },
            success: (location) async {
              initialLat = location.lat;
              initialLng = location.long;
              final controller = await _gmapController.future;
              controller.animateCamera(
                CameraUpdate.newLatLng(LatLng(location.lat, location.long)),
              );
            },
          );
        },
        child: Stack(
          children: [
            // CONTENT
            _buildContentWidget(),

            // FORM APPBAR
            AppbarWithSearchWidget(usingWithAppbar: false),
          ],
        ),
      ),
    );
  }

  // CONTENT
  Widget _buildContentWidget() {
    return NestedScrollView(
      headerSliverBuilder: (context, _) {
        return [
          // MAP
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverPersistentHeader(
              pinned: true,
              delegate: HeaderPersistent(
                maxHeight: .7.sh,
                minHeight: .4.sh,
                child: _buildMapWidget(),
              ),
            ),
          ),
        ];
      },
      body: Builder(
        builder: (context) {
          return CustomScrollView(
            slivers: [
              // HEADER INJECTOR
              SliverOverlapInjector(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                  context,
                ),
              ),

              // CONTENT
              SliverFillRemaining(child: _buildDetailMapWidget()),
            ],
          );
        },
      ),
    );
  }

  // MAP WIDGET
  Widget _buildMapWidget() {
    return Stack(
      children: [
        // MAP
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(initialLat, initialLng),
            zoom: 15,
          ),
          zoomControlsEnabled: false,
          mapType: MapType.normal,
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          compassEnabled: false,
          onMapCreated: (controller) {
            _gmapController.complete(controller);
          },
          onCameraIdle: () async {
            final controller = await _gmapController.future;
            LatLngBounds bounds = await controller.getVisibleRegion();

            final swLat = bounds.southwest.latitude;
            final swLng = bounds.southwest.longitude;
            final neLat = bounds.northeast.latitude;
            final neLng = bounds.northeast.longitude;

            debugPrint("Southwest: $swLat, $swLng");
            debugPrint("Northeast: $neLat, $neLng");
          },
          gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
            Factory<OneSequenceGestureRecognizer>(
              () => EagerGestureRecognizer(),
            ),
          },
        ),

        // NAVIGATE TO MY LOCATION
        Positioned(
          bottom: 10.h,
          right: 10.w,
          child: Bounceable(
            onTap: () {
              _gmapController.future.then((value) {
                value.animateCamera(
                  CameraUpdate.newLatLng(LatLng(initialLat, initialLng)),
                );
              });
            },
            child: Container(
              height: 35.h,
              width: 35.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppRadius.commonRadius),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.neutral500,
                    blurRadius: 3,
                    blurStyle: BlurStyle.solid,
                  ),
                ],
              ),
              child: Icon(Icons.my_location, color: AppColors.primaryColor600),
            ),
          ),
        ),
      ],
    );
  }

  // DETAIL MAP
  Widget _buildDetailMapWidget() {
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

        // HEADER TITLE & RESET FILTER
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
          child: HeaderFilterWidget(withCloseButton: false),
        ),

        Divider(color: AppColors.neutral300),

        Padding(
          padding: AppPadding.pagePadding,
          child: Column(
            children: [
              // LIST FILTERS
              ListFilterPropertyWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
