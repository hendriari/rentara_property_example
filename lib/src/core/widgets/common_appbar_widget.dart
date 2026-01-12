import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/utils/constants.dart';
import 'package:rentara_property_clone/src/core/widgets/gradient_search_icon_widget.dart';

class CommonAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final bool? centerTitle;
  final VoidCallback? onSearch;
  final bool withLeading;
  final bool withSearchButton;

  const CommonAppbarWidget({
    super.key,
    this.centerTitle,
    this.onSearch,
    this.withLeading = false,
    this.withSearchButton = false,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: withLeading
          ? Icon(Icons.short_text, color: AppColors.neutral500)
          : const SizedBox.shrink(),
      title: Image.asset(Constants.rentaraIconImg, height: 32.h),
      actions: withSearchButton
          ? [
              IconButton(
                onPressed: onSearch,
                icon: const GradientSearchIconWidget(),
              ),
            ]
          : null,
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: .5,
      shadowColor: AppColors.neutral50,
    );
  }
}
