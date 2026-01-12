import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rentara_property_clone/src/core/injector/injector.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_padding.dart';
import 'package:rentara_property_clone/src/core/theme/app_radius.dart';
import 'package:rentara_property_clone/src/core/utils/helper.dart';
import 'package:rentara_property_clone/src/core/widgets/network_image_cached_widget.dart';
import 'package:rentara_property_clone/src/features/property/domain/entities/property/property_entities.dart';

class PropertyDetailPage extends StatelessWidget {
  final PropertyEntities? property;

  const PropertyDetailPage({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: _buildAppbarWidget(context, textTheme),
      body: Padding(
        padding: AppPadding.pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // DURATION
            Text(
              injector<Helper>().formatDuration(
                property?.updatedAt ?? DateTime.now(),
              ),
              style: textTheme.bodySmall,
            ),

            // IMG && NAME PROPERTY
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // IMG
                  Hero(
                    tag: property?.id ?? UniqueKey().toString(),
                    child: NetworkImageCachedWidget(
                      height: 50.h,
                      width: 50.h,
                      imagePath: property?.imageUrl,
                    ),
                  ),

                  SizedBox(width: 8.w),

                  // NAME
                  Expanded(
                    child: Text(
                      property?.name ?? '-',
                      style: textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // LOCATION
            Row(
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
                  ),
                ),
              ],
            ),

            // DETAIL PROPERTY
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Wrap(
                children: [
                  _buildCardWrapWidget(
                    textTheme: textTheme,
                    name: injector<Helper>().toSentenceCase(
                      property?.type ?? '-',
                    ),
                  ),
                  _buildCardWrapWidget(
                    textTheme: textTheme,
                    name: injector<Helper>().toSentenceCase(
                      property?.status ?? '-',
                    ),
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
            ),

            // TITLE DESCRIPTION
            Text(
              "Description",
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 2.h),

            // DESCRIPTION
            Text(
              property?.description ?? '',
              style: textTheme.bodyMedium,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }

  // APPBAR
  AppBar _buildAppbarWidget(BuildContext context, TextTheme textTheme) {
    return AppBar(
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: Row(
          children: [
            Icon(Icons.arrow_back_ios_new, color: AppColors.primaryColor600),
            Text(
              "Back",
              style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      leadingWidth: 80.w,
      title: Text(
        'Property Detail',
        style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }

  // CARD FOR WRAP DETAIL PROPERTY
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
