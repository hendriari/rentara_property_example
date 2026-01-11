import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentara_property_clone/src/core/widgets/button_widget.dart';

class InformationWidget extends StatelessWidget {
  final String description;
  final VoidCallback onTap;

  const InformationWidget({
    super.key,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(20.r),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 350.w, maxHeight: 300.h),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // TITLE
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: textTheme.bodyLarge,
                  text: 'Allow ',
                  children: [
                    // APP NAME
                    TextSpan(
                      text: 'Rentara Property ',
                      style: textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    TextSpan(text: description),
                  ],
                ),
              ),

              SizedBox(height: 20.h),

              // BUTTON ALLOW
              ButtonWidget(buttonText: "Continue", onTap: onTap),
            ],
          ),
        ),
      ),
    );
  }
}

Future<bool?> showInformationDialog(
  BuildContext context, {
  required String description,
  required VoidCallback onTap,
}) async {
  return showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: 'INFO DIALOG',
    transitionBuilder: (context, anim1, anim2, child) {
      return Transform.scale(scale: anim1.value, child: child);
    },
    pageBuilder: (context, _, _) {
      return InformationWidget(description: description, onTap: onTap);
    },
  );
}
