import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentara_property_clone/src/core/injector/injector.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_radius.dart';
import 'package:rentara_property_clone/src/core/utils/helper.dart';
import 'package:rentara_property_clone/src/core/widgets/network_image_cached_widget.dart';
import 'package:rentara_property_clone/src/features/property/domain/entities/property/property_entities.dart';

class PropertyCardWidget extends StatelessWidget {
  final PropertyEntities? property;
  final TextTheme? themeText;
  final VoidCallback? onTap;

  const PropertyCardWidget({
    super.key,
    required this.property,
    this.themeText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var textTheme = themeText ?? Theme.of(context).textTheme;

    return Bounceable(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 8.h, right: 1.w),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.red, Colors.purple, Colors.blue, Colors.green],
          ),
          borderRadius: BorderRadius.circular(AppRadius.commonRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Container(
          margin: EdgeInsets.only(left: 4.w),
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(AppRadius.commonRadius),
              bottomRight: Radius.circular(AppRadius.commonRadius),
              topLeft: Radius.circular(AppRadius.commonRadius - 4),
              bottomLeft: Radius.circular(AppRadius.commonRadius - 4),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.neutral300,
                blurRadius: 1,
                blurStyle: BlurStyle.solid,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IMAGE
              Hero(
                tag: property?.id ?? UniqueKey().toString(),
                child: NetworkImageCachedWidget(
                  height: 50.h,
                  width: 50.h,
                  imagePath: property?.imageUrl,
                ),
              ),

              SizedBox(width: 8.w),

              // DETAIL CONTENT
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // NAME
                    Text(
                      property?.name ?? '-',
                      style: textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // ADDRESS
                    Text(
                      property?.address ?? '-',
                      style: textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // LOCATION
                    Padding(
                      padding: EdgeInsets.only(
                        top: 4.h,
                        bottom: 8.h,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 12.h,
                            color: AppColors.primaryColor900,
                          ),

                          SizedBox(width: 2.w),

                          Expanded(
                            child: Text(
                              property?.address ?? '-',
                              style: textTheme.bodySmall?.copyWith(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // DETAIL PROPERTY
                    Wrap(
                      children: [
                        _buildCardWrapWidget(
                          textTheme: textTheme,
                          name: property?.type,
                        ),
                        _buildCardWrapWidget(
                          textTheme: textTheme,
                          name: property?.status,
                        ),
                        _buildCardWrapWidget(
                          textTheme: textTheme,
                          name: injector<Helper>().formatCurrencyAbbreviated(
                            property?.price ?? '0',
                          ),
                        ),
                        _buildCardWrapWidget(
                          textTheme: textTheme,
                          name: "LB ${property?.buildingArea}",
                        ),
                        _buildCardWrapWidget(
                          textTheme: textTheme,
                          name: "LT ${property?.landArea}",
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // WHITELIST
              Bounceable(
                onTap: () {},
                child: SizedBox(
                  height: 25.h,
                  width: 25.h,
                  child: Icon(
                    Icons.bookmark_outlined,
                    color: AppColors.primaryColor900,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCardWrapWidget({
    required TextTheme textTheme,
    required String? name,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
      margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.commonRadius),
        color: AppColors.neutral100,
        border: Border.all(color: AppColors.neutral200),
      ),
      child: Text(
        name ?? '-',
        style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
