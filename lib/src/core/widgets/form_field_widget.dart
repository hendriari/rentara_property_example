import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_radius.dart';

class FormFieldWidget extends StatelessWidget {
  final String? hint;
  final String? label;
  final Function()? onTap;
  final TextEditingController? textEditingController;
  final bool? obscureText;
  final bool? readOnly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? textInputType;
  final FormFieldValidator<String>? formFieldValidator;
  final int? maxLines;
  final double? borderRadius;
  final Color? fillColor;
  final EdgeInsets? margin;
  final Color? outlineBorderColor;
  final Color? errorOutlineBorderColor;
  final TextStyle? hintLabelTextStyle;
  final TextStyle? inputTextStyle;
  final double? sizeTextInput;
  final double? borderWidth;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final EdgeInsets? scrollPadding;
  final EdgeInsets? contentPadding;
  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;
  final int? minLines;
  final double? formFieldHeight;
  final double? formFieldWidth;
  final TextAlign? textAlign;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final String? prefixText;
  final TextStyle? prefixTextStyle;
  final String? suffixText;
  final TextStyle? suffixTextStyle;

  const FormFieldWidget({
    super.key,
    this.hint,
    this.label,
    this.onTap,
    this.textEditingController,
    this.obscureText,
    this.readOnly,
    this.suffixIcon,
    this.prefixIcon,
    this.autovalidateMode,
    this.textInputType,
    this.formFieldValidator,
    this.maxLines,
    this.borderRadius,
    this.fillColor,
    this.margin,
    this.outlineBorderColor,
    this.errorOutlineBorderColor,
    this.hintLabelTextStyle,
    this.inputTextStyle,
    this.sizeTextInput,
    this.borderWidth,
    this.onChanged,
    this.onEditingComplete,
    this.scrollPadding,
    this.contentPadding,
    this.prefixIconConstraints,
    this.suffixIconConstraints,
    this.minLines,
    this.formFieldHeight,
    this.formFieldWidth,
    this.textAlign,
    this.textInputAction,
    this.focusNode,
    this.prefixText,
    this.prefixTextStyle,
    this.suffixText,
    this.suffixTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      height: formFieldHeight,
      width: formFieldWidth,
      margin: margin,
      child: TextFormField(
        textAlign: textAlign ?? TextAlign.start,
        controller: textEditingController,
        autovalidateMode: autovalidateMode,
        obscureText: obscureText ?? false,
        scrollPadding: scrollPadding ?? const EdgeInsets.all(20),
        keyboardType: textInputType,
        cursorColor: colorScheme.primary,
        minLines: minLines ?? 1,
        maxLines: maxLines ?? 1,
        focusNode: focusNode,
        onChanged: onChanged,
        readOnly: readOnly ?? false,
        validator: formFieldValidator,
        onTap: onTap,
        style: inputTextStyle ?? textTheme.bodyMedium,
        textInputAction: textInputAction,
        onEditingComplete: onEditingComplete,
        decoration: InputDecoration(
          prefixText: prefixText,
          prefixStyle: prefixTextStyle,
          suffixText: suffixText,
          suffixStyle: suffixTextStyle,
          contentPadding:
              contentPadding ??
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
          isDense: true,
          filled: true,
          fillColor: fillColor ?? AppColors.neutral50,
          suffixIcon: suffixIcon,
          suffixIconConstraints: suffixIconConstraints,
          prefixIconConstraints: prefixIconConstraints,
          prefixIcon: prefixIcon,
          hintText: hint,
          hintStyle: hintLabelTextStyle ?? textTheme.bodyMedium?.copyWith(
            color: AppColors.neutral500,
          ),
          labelText: label,
          labelStyle: hintLabelTextStyle ?? textTheme.bodySmall,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? AppRadius.commonRadius),
            borderSide: BorderSide(
              color: outlineBorderColor ?? AppColors.neutral300,
              width: borderWidth ?? 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? AppRadius.commonRadius),
            borderSide: BorderSide(
              color: outlineBorderColor ?? AppColors.neutral300,
              width: borderWidth ?? 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? AppRadius.commonRadius),
            borderSide: BorderSide(
              color: outlineBorderColor ?? AppColors.neutral300,
              width: borderWidth ?? 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? AppRadius.commonRadius),
            borderSide: BorderSide(
              color: errorOutlineBorderColor ?? colorScheme.error,
              width: borderWidth ?? 1,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? AppRadius.commonRadius),
            borderSide: BorderSide(
              color: errorOutlineBorderColor ?? colorScheme.error,
              width: borderWidth ?? 1,
            ),
          ),
        ),
      ),
    );
  }
}
