import 'package:flutter/material.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';

class GradientSearchIconWidget extends StatelessWidget {
  const GradientSearchIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          colors: [
            AppColors.neutral900,
            AppColors.primaryColor600,
            AppColors.primaryColor500,
            AppColors.primaryColor400,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(bounds);
      },
      child: Icon(Icons.search, color: Colors.white),
    );
  }
}
