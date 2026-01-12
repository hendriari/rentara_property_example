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

  String formatStringToNumberCurrency({
    required String value,
    String? symbol,
    String? locale,
    int? decimalDigits,
  }) {
    final currency = double.tryParse(value) ?? 0;

    return NumberFormat.currency(
      locale: locale ?? 'id',
      symbol: symbol ?? 'IDR ',
      decimalDigits: decimalDigits ?? 2,
    ).format(currency);
  }

  String toSentenceCase(String value) {
    List<String> words = value.split(' ');

    for (int i = 0; i < words.length; i++) {
      if (words[i].isNotEmpty) {
        words[i] =
            words[i][0].toUpperCase() + words[i].substring(1).toLowerCase();
      }
    }

    return words.join(' ');
  }

  String formatCurrencyAbbreviated(String value) {
    String cleanedValue = value
        .replaceAll('IDR', '')
        .replaceAll('.', '')
        .replaceAll(' ', '')
        .replaceFirst(',', '.');

    if (cleanedValue.contains('.')) {
      cleanedValue = cleanedValue.split('.')[0];
    }

    double n = double.tryParse(cleanedValue) ?? 0;

    if (n >= 1000000000) {
      return 'IDR ${(n / 1000000000).toStringAsFixed(1).replaceAll(RegExp(r'\.0*$'), '')} M';
    } else if (n >= 1000000) {
      return 'IDR ${(n / 1000000).toStringAsFixed(1).replaceAll(RegExp(r'\.0*$'), '')} jt';
    } else if (n >= 1000) {
      return 'IDR ${(n / 1000).toStringAsFixed(1).replaceAll(RegExp(r'\.0*$'), '')} rb';
    } else {
      return 'IDR ${n.toStringAsFixed(0)}';
    }
  }

  String formatDuration(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays >= 365) {
      final years = (difference.inDays / 365).floor();
      return '$years tahun lalu';
    } else if (difference.inDays >= 30) {
      final months = (difference.inDays / 30).floor();
      return '$months bulan lalu';
    } else if (difference.inDays >= 1) {
      return '${difference.inDays} hari lalu';
    } else if (difference.inHours >= 1) {
      return '${difference.inHours} jam lalu';
    } else if (difference.inMinutes >= 1) {
      return '${difference.inMinutes} menit lalu';
    } else {
      return 'Baru saja';
    }
  }
}
