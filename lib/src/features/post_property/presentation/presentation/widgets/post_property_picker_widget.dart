import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_padding.dart';
import 'package:rentara_property_clone/src/core/theme/app_radius.dart';
import 'package:rentara_property_clone/src/core/widgets/button_widget.dart';

class PostPropertyPickerWidget extends StatefulWidget {
  final String title;
  final List<String> items;
  final String? initialValue;
  final Function(String?) onSave;

  const PostPropertyPickerWidget({
    super.key,
    required this.title,
    required this.items,
    this.initialValue,
    required this.onSave,
  });

  @override
  State<PostPropertyPickerWidget> createState() =>
      _PostPropertyPickerWidgetState();
}

class _PostPropertyPickerWidgetState extends State<PostPropertyPickerWidget> {
  late ValueNotifier<String?> _selectedValue;
  late TextTheme _textTheme;

  @override
  void initState() {
    super.initState();
    _selectedValue = ValueNotifier(widget.initialValue);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textTheme = Theme.of(context).textTheme;
  }

  @override
  void dispose() {
    _selectedValue.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // DIVIDER
          Container(
            width: 40.w,
            height: 6.h,
            margin: EdgeInsets.only(top: 8.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: AppColors.neutral300,
            ),
          ),

          // CONTENT
          Padding(
            padding: AppPadding.pagePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // LIST
                ValueListenableBuilder(
                  valueListenable: _selectedValue,
                  builder: (context, value, c) {
                    return Wrap(
                      spacing: 8.w,
                      runSpacing: 12.h,
                      alignment: WrapAlignment.start,
                      children: widget.items.map((item) {
                        final isSelected = value == item;
                        return Bounceable(
                          onTap: () {
                            _selectedValue.value = item;
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 8.h,
                              horizontal: 16.w,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                AppRadius.commonRadius,
                              ),
                              color: isSelected
                                  ? AppColors.primaryColor600
                                  : AppColors.neutral100,
                              border: Border.all(
                                color: isSelected
                                    ? AppColors.primaryColor600
                                    : AppColors.neutral300,
                                width: 1.w,
                              ),
                            ),
                            child: Text(
                              item,
                              style: _textTheme.labelLarge?.copyWith(
                                color: isSelected
                                    ? Colors.white
                                    : AppColors.neutral900,
                                fontWeight: isSelected
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    );
                  },
                ),

                SizedBox(height: 16.h),

                // BUTTON SAVE
                ButtonWidget(
                  buttonText: "Confirm",
                  onTap: () {
                    widget.onSave.call(_selectedValue.value);
                    context.pop();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future<String?> showPostPropertyPicker(
  BuildContext context, {
  required String title,
  required List<String> items,
  String? initialValue,
  required Function(String?) onSave,
}) {
  return showModalBottomSheet<String>(
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
    ),
    builder: (context) => PostPropertyPickerWidget(
      title: title,
      items: items,
      initialValue: initialValue,
      onSave: onSave,
    ),
  );
}
