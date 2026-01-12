import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_radius.dart';
import 'package:rentara_property_clone/src/core/utils/enums.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_filter/property_filter_bloc.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_filter/property_filter_event.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_filter/property_filter_state.dart';
import 'package:rentara_property_clone/src/features/property/presentation/widgets/show_filter_property_widget.dart';

class ListFilterPropertyWidget extends StatelessWidget {
  const ListFilterPropertyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 35.h,
      child: BlocBuilder<PropertyFilterBloc, PropertyFilterState>(
        builder: (context, state) {
          return Row(
            children: [
              // OPEN ALL FILTER
              _buildCardFilter(
                onTap: () {},
                padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
                margin: EdgeInsets.only(right: 4.h),
                child: Icon(
                  CupertinoIcons.slider_horizontal_3,
                  color: AppColors.neutral400,
                  size: 20.h,
                ),
              ),

              // LIST FILTER
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // STATUS
                    _buildCardFilter(
                      onTap: () {
                        showFilterProperty(
                          context,
                          type: PropertyFilterType.status,
                          title: "Status",
                        );
                      },
                      isSelected: state.status != null,
                      child: _buildDetailFilterContent(
                        textTheme: textTheme,
                        filterName: "Status",
                      ),
                    ),

                    // LOCATION
                    _buildCardFilter(
                      onTap: () {
                        showFilterProperty(
                          context,
                          type: PropertyFilterType.location,
                          title: "Location",
                        );
                      },
                      child: _buildDetailFilterContent(
                        textTheme: textTheme,
                        countFilter: state.location?.length,
                        filterName: "Location",
                      ),
                    ),

                    // TYPE
                    _buildCardFilter(
                      onTap: () {
                        showFilterProperty(
                          context,
                          type: PropertyFilterType.type,
                          title: "Type",
                        );
                      },
                      child: _buildDetailFilterContent(
                        textTheme: textTheme,
                        countFilter: state.type?.length,
                        filterName: "Type",
                      ),
                    ),

                    // PRICE RANGE
                    _buildCardFilter(
                      onTap: () {
                        showFilterProperty(
                          context,
                          type: PropertyFilterType.price,
                          title: "Price Range",
                          minPrice: state.minPrice,
                        );
                      },
                      isSelected:
                          state.minPrice != null && state.maxPrice != null,
                      child: _buildDetailFilterContent(
                        textTheme: textTheme,
                        filterName: "Price Range",
                      ),
                    ),

                    // ALL FILTER
                    _buildCardFilter(
                      usingGradient: true,
                      onTap: () {},
                      child: Text(
                        "All Filter",
                        style: textTheme.labelMedium?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    // RESET
                    _buildCardFilter(
                      onTap: () {
                        context.read<PropertyFilterBloc>().add(
                          PropertyFilterResetEvent(),
                        );
                      },
                      margin: EdgeInsets.only(left: 4.h),
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.restart,
                            color: AppColors.neutral400,
                            size: 18.h,
                          ),

                          SizedBox(width: 4.w),

                          Text("Reset", style: textTheme.labelMedium),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  // CARD FILTER
  Widget _buildCardFilter({
    bool usingGradient = false,
    bool isSelected = false,
    EdgeInsets? margin,
    EdgeInsets? padding,
    required Widget child,
    VoidCallback? onTap,
  }) {
    return Bounceable(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding:
            padding ?? EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
        margin: margin ?? EdgeInsets.symmetric(horizontal: 4.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.commonRadius),
          gradient: usingGradient ? AppColors.gradient : null,
          color: isSelected ? AppColors.primaryColor100 : AppColors.neutral100,
          border: Border.all(
            color: isSelected
                ? AppColors.primaryColor600
                : AppColors.neutral300,
            width: 1.w,
          ),
        ),
        child: child,
      ),
    );
  }

  // DETAIL FILTER CONTENT
  Widget _buildDetailFilterContent({
    required TextTheme textTheme,
    required String filterName,
    int? countFilter,
  }) {
    return Row(
      children: [
        // FILTER NAME
        Text(filterName, style: textTheme.labelMedium),

        countFilter != null
            ? Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 4.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: AppColors.primaryColor300,
                ),
                child: Text(
                  "$countFilter",
                  style: textTheme.labelSmall?.copyWith(color: Colors.white),
                ),
              )
            : const SizedBox.shrink(),

        SizedBox(width: 4.w),

        Icon(
          Icons.keyboard_arrow_down_sharp,
          color: AppColors.neutral400,
          size: 18.h,
        ),
      ],
    );
  }
}
