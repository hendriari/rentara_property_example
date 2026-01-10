import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';

class CheckboxWidget extends StatefulWidget {
  final String title;
  final Function(bool) onChanged;

  const CheckboxWidget({
    super.key,
    required this.title,
    required this.onChanged,
  });

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  final ValueNotifier<bool> _isChecked = ValueNotifier(false);
  late TextTheme _textTheme;
  late ColorScheme _colorScheme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textTheme = Theme.of(context).textTheme;
    _colorScheme = Theme.of(context).colorScheme;
  }

  @override
  void dispose() {
    _isChecked.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // CHECKBOX
        Bounceable(
          onTap: () {
            _isChecked.value = !_isChecked.value;
            widget.onChanged.call(_isChecked.value);
          },
          child: ValueListenableBuilder(
            valueListenable: _isChecked,
            builder: (context, value, c) {
              return Container(
                height: 20.h,
                width: 20.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: value ? AppColors.primaryColor600 : null,
                  border: Border.all(
                    color: value ? _colorScheme.primary : AppColors.neutral300,
                    width: 1,
                  ),
                ),
                child: value
                    ? Icon(
                        CupertinoIcons.check_mark,
                        color: Colors.white,
                        size: 15.h,
                      )
                    : const SizedBox.shrink(),
              );
            },
          ),
        ),

        SizedBox(width: 8.w),

        // INFO
        Text(widget.title, style: _textTheme.bodyMedium),
      ],
    );
  }
}
