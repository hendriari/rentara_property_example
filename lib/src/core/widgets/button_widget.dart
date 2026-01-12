import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_radius.dart';

/// CHILD ITU OPTIONAAL, JIKA != NULL MAKA AKAN MENGGANTIKAN BUTTON TEXT
class ButtonWidget extends StatelessWidget {
  final String buttonText;
  final Widget? child;
  final VoidCallback onTap;
  final Color? bgColor;
  final EdgeInsets? margin;
  final BoxBorder? border;
  final double? maxHeight;
  final double? maxWidth;

  const ButtonWidget({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.maxHeight,
    this.maxWidth,
    this.margin,
    this.child,
    this.bgColor,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Bounceable(
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints(
          minWidth: 64.w,
          minHeight: 46.h,
          maxHeight: (maxHeight ?? 0) <= 46.h ? 46.h : maxHeight!,
        ),
        margin: margin,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.commonRadius),
          color: bgColor,
          border: border,
          gradient: bgColor != null ? null : AppColors.gradient,
        ),
        child:
            child ??
            Text(
              buttonText,
              style: textTheme.labelLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
    );
  }
}
