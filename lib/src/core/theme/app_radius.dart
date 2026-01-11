import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppRadius {
  static final AppRadius instance = AppRadius._internal();

  factory AppRadius() {
    return instance;
  }

  AppRadius._internal();

  static final double commonRadius = 8.r;
}
