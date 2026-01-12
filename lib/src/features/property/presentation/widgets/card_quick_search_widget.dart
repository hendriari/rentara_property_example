import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentara_property_clone/src/core/injector/injector.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/utils/helper.dart';
import 'package:rentara_property_clone/src/core/widgets/network_image_cached_widget.dart';
import 'package:rentara_property_clone/src/features/property/domain/entities/property/property_entities.dart';

class CardQuickSearchWidget extends StatelessWidget {
  final PropertyEntities? property;
  final VoidCallback? onTap;
  final TextTheme? themeText;

  const CardQuickSearchWidget({
    super.key,
    required this.property,
    this.onTap,
    this.themeText,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = themeText ?? Theme.of(context).textTheme;
    return Bounceable(
      onTap: onTap,
      child: SizedBox(
        child: Column(
          children: [
            // DETAIL PROPERTY
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // IMAGE PROPERTY
                Hero(
                  tag: property?.id ?? '',
                  child: NetworkImageCachedWidget(
                    imagePath: property?.imageUrl,
                    height: 50.h,
                    width: 55.w,
                  ),
                ),

                SizedBox(width: 8.w),

                // DETAIL CONTENT
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //  NAME & TYPE
                      RichText(
                        text: TextSpan(
                          text: "${property?.name ?? '-'} ",
                          style: textTheme.bodyMedium,
                          children: [
                            // TYPE
                            TextSpan(
                              text: injector<Helper>().toSentenceCase(
                                property?.type ?? '-',
                              ),
                              style: textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // PRICE
                      Text(
                        property?.price ?? "IDR 0",
                        style: textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 8.w),

                Icon(
                  CupertinoIcons.arrow_up_right,
                  color: AppColors.primaryColor600,
                  size: 16.h,
                ),
              ],
            ),

            // DIVIDER
            Divider(color: AppColors.neutral250),
          ],
        ),
      ),
    );
  }
}
