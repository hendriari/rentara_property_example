import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_padding.dart';
import 'package:rentara_property_clone/src/core/theme/app_radius.dart';
import 'package:rentara_property_clone/src/core/utils/constants.dart';
import 'package:rentara_property_clone/src/core/widgets/button_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/common_appbar_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/form_field_widget.dart';

class PropertyPage extends StatelessWidget {
  const PropertyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CommonAppbarWidget(
        withLeading: true,
        withSearchButton: true,
        onSearch: () {},
      ),
      body: Padding(
        padding: AppPadding.pagePadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // FORM SEARCH
            FormFieldWidget(
              readOnly: true,
              useGradientBorder: true,
              onTap: () {},
              hint: "Find Property",
              prefixIcon: Icon(Icons.search, color: AppColors.neutral400),
            ),

            // NAVIGATE TO MAP
            Container(
              margin: EdgeInsets.only(top: 16.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppRadius.commonRadius),
                border: Border.all(color: AppColors.neutral300),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.neutral300,
                    blurStyle: BlurStyle.solid,
                    blurRadius: 1,
                  ),
                ],
                color: AppColors.neutral50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // MAP ANIMATION
                  Container(
                    height: 150.h,
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(AppRadius.commonRadius),
                        topLeft: Radius.circular(AppRadius.commonRadius),
                      ),
                    ),
                    child: Lottie.asset(Constants.buildingAnimation),
                  ),

                  // DESCRIPTION
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 8.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // TITLE
                        Text(
                          "Explore Properties on the Map",
                          style: textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // DESCRIPTION
                        Text(
                          "Discover available rentals around you. Browse locations, compare options, and find your next place directly from the map.",
                          style: textTheme.bodySmall,
                        ),

                        // NAVIGATE TO MAP
                        ButtonWidget(
                          margin: EdgeInsets.symmetric(vertical: 10.h),
                          buttonText: "",
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Explore Now",
                                style: textTheme.labelLarge?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(width: 8.w),

                              // ICON
                              Icon(
                                Icons.arrow_forward_rounded,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
