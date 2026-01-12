import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_radius.dart';
import 'package:rentara_property_clone/src/core/utils/constants.dart';
import 'package:shimmer/shimmer.dart';

class NetworkImageCachedWidget extends StatelessWidget {
  final String? imagePath;
  final double? height;
  final double? width;

  const NetworkImageCachedWidget({
    super.key,
    required this.imagePath,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return CachedNetworkImage(
      height: height ?? 200.h,
      width: width ?? double.infinity,
      imageUrl: imagePath ?? Constants.placeholderImg,
      imageBuilder: (context, imgProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.commonRadius),
          image: DecorationImage(image: imgProvider, fit: BoxFit.cover),
        ),
      ),
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          Shimmer.fromColors(
            baseColor: AppColors.neutral100,
            highlightColor: Colors.grey,
            child: Container(
              height: height ?? 200.h,
              width: width ?? double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppRadius.commonRadius),
                color: Colors.white,
              ),
            ),
          ),
      errorWidget: (context, url, error) => Container(
        height: height ?? 200.h,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.commonRadius),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.neutral400,
              blurStyle: BlurStyle.solid,
              blurRadius: 1,
            ),
          ],
        ),
        child: Icon(Icons.error, color: colorScheme.error),
      ),
    );
  }
}
