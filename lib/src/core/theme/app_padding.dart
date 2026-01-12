import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppPadding {
  static final AppPadding instance = AppPadding._internal();

  factory AppPadding() {
    return instance;
  }

  AppPadding._internal();

  static final EdgeInsets pagePadding = EdgeInsets.symmetric(
    vertical: 8.h,
    horizontal: 16.w,
  );
}
