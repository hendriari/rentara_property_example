import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_padding.dart';
import 'package:rentara_property_clone/src/core/theme/app_radius.dart';
import 'package:rentara_property_clone/src/core/widgets/form_field_widget.dart';

class AppbarWithSearchWidget extends StatefulWidget {
  final bool usingWithAppbar;
  final Function(String) onSearch;
  final VoidCallback? onTap;
  final bool readOnly;

  const AppbarWithSearchWidget({
    super.key,
    this.usingWithAppbar = true,
    required this.onSearch,
    this.onTap,
    this.readOnly = false,
  });

  @override
  State<AppbarWithSearchWidget> createState() => _AppbarWithSearchWidgetState();
}

class _AppbarWithSearchWidgetState extends State<AppbarWithSearchWidget> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: AppPadding.pagePadding,
        child: Row(
          children: [
            // BUTTON BACK
            Bounceable(
              onTap: () => context.pop(),
              child: Container(
                height: 38.h,
                width: 38.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: widget.usingWithAppbar
                      ? Colors.transparent
                      : AppColors.neutral50,
                  borderRadius: BorderRadius.circular(AppRadius.commonRadius),
                  border: widget.usingWithAppbar
                      ? null
                      : Border.all(color: AppColors.neutral300),
                ),
                child: Icon(Icons.arrow_back, color: AppColors.neutral400),
              ),
            ),

            SizedBox(width: 8.w),

            // FORM SEARCH
            Expanded(
              child: FormFieldWidget(
                formFieldHeight: 38.h,
                textEditingController: _searchController,
                useGradientBorder: true,
                prefixIcon: Icon(Icons.search, color: AppColors.neutral400),
                hint: "Find Property",
                readOnly: widget.readOnly,
                onTap: widget.onTap,
                onChanged: (value) {
                  widget.onSearch.call(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
