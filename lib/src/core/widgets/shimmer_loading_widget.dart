import 'package:flutter/material.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/utils/constants.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingWidget extends StatelessWidget {
  final Widget? child;

  const ShimmerLoadingWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.neutral300,
      highlightColor: AppColors.neutral100,
      child: Center(child: child ?? Image.asset(Constants.rentaraIconImg)),
    );
  }
}
