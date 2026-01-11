import 'package:flutter/material.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  final Color? color;
  final double? height;

  const LoadingWidget({super.key, this.color, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: height,
      child: CircularProgressIndicator(
        color: color ?? AppColors.primaryColor600,
        backgroundColor: AppColors.primaryColor100,
        strokeWidth: (height ?? 0) <= 20 ? 4.0 : 6.0,
      ),
    );
  }
}
