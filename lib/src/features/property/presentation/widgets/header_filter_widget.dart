import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_filter/property_filter_bloc.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_filter/property_filter_event.dart';

class HeaderFilterWidget extends StatelessWidget {
  final String? title;
  final bool withCloseButton;

  const HeaderFilterWidget({
    super.key,
    this.title,
    this.withCloseButton = true,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // CLOSE BUTTON
        withCloseButton
            ? Bounceable(
                onTap: () => context.pop(),
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: 60.w,
                  child: Icon(Icons.close, color: AppColors.neutral400),
                ),
              )
            : SizedBox(width: 60.w),

        Text(
          title ?? "Xplore Property",
          style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),

        // RESET FILTER
        Bounceable(
          onTap: () {
            context.read<PropertyFilterBloc>().add(
              PropertyFilterResetEvent(),
            );
          },
          child: Container(
            width: 60.w,
            alignment: Alignment.centerRight,
            child: Text(
              "Reset",
              style: textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
