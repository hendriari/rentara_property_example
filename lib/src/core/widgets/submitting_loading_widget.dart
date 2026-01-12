import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentara_property_clone/src/core/widgets/loading_widget.dart';

class SubmittingLoadingWidget extends StatelessWidget {
  const SubmittingLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LoadingWidget(height: 20.h, color: Colors.white),

        SizedBox(width: 8.w),

        Text(
          "Submitting",
          style: textTheme.labelLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
