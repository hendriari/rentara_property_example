import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';

class Helper {
  Future<dynamic> showToast({
    required String message,
    ToastGravity? toastGravity,
    double? fontSize,
    Color? textColor,
    Color? backGroundColor,
  }) {
    return Fluttertoast.showToast(
      msg: message,
      gravity: toastGravity ?? ToastGravity.BOTTOM,
      fontSize: fontSize ?? 15.sp,
      textColor: textColor ?? Colors.white,
      backgroundColor: backGroundColor ?? AppColors.primaryColor600,
    );
  }

  String formatCurrency(double value) {
    return NumberFormat("#,###", "id_ID").format(value);
  }
}
