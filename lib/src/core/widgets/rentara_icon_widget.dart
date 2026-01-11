import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentara_property_clone/src/core/utils/constants.dart';

class RentaraIconWidget extends StatelessWidget {
  final EdgeInsets? margin;

  const RentaraIconWidget({super.key, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 80.w,
      margin: margin,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(Constants.rentaraIconImg),
        ),
      ),
    );
  }
}
