import 'package:flutter/rendering.dart';

class AppColors {
  static final AppColors instance = AppColors._internal();

  factory AppColors() {
    return instance;
  }

  AppColors._internal();

  static final primaryColor100 = Color(0xFFD2DEFE);
  static final primaryColor200 = Color(0xFFA6BBFE);
  static final primaryColor300 = Color(0xFF7996FC);
  static final primaryColor400 = Color(0xFF5779FA);
  static final primaryColor500 = Color(0xFF2149F7);
  static final primaryColor600 = Color(0xFF1837D4);
  static final primaryColor700 = Color(0xFF1028B1);
  static final primaryColor800 = Color(0xFF0A1B8F);
  static final primaryColor900 = Color(0xFF061276);

  static final secondaryColor100 = Color(0xFFFEE9DC);
  static final secondaryColor200 = Color(0xFFFDCEB9);
  static final secondaryColor300 = Color(0xFFFBAD95);
  static final secondaryColor400 = Color(0xFFF78D7A);
  static final secondaryColor500 = Color(0xFFF25A4F);
  static final secondaryColor600 = Color(0xFFD0393C);
  static final secondaryColor700 = Color(0xFFAE2735);
  static final secondaryColor800 = Color(0xFF8C192E);
  static final secondaryColor900 = Color(0xFF740F29);

  static const Color neutral50 = Color(0xFFfcfcfc);
  static const Color neutral100 = Color(0xFFf9f9f9);
  static const Color neutral150 = Color(0xFFf4f4f4);
  static const Color neutral200 = Color(0xFFf0f0f1);
  static const Color neutral250 = Color(0xFFe0e1e1);
  static const Color neutral300 = Color(0xFFcfd0d1);
  static const Color neutral350 = Color(0xFFbcbebf);
  static const Color neutral400 = Color(0xFFa7aaac);
  static const Color neutral450 = Color(0xFF8f9395);
  static const Color neutral500 = Color(0xFF72787b);
  static const Color neutral550 = Color(0xFF5d6568);
  static const Color neutral600 = Color(0xFF565d61);
  static const Color neutral650 = Color(0xFF4e5558);
  static const Color neutral700 = Color(0xFF464c4f);
  static const Color neutral750 = Color(0xFF3d4244);
  static const Color neutral800 = Color(0xFF323638);
  static const Color neutral900 = Color(0xFF1f2223);
  static const Color neutral950 = Color(0xFF181a1b);
  static const Color neutral1000 = Color(0xFF0b0c0d);

  static const Color solidBlack = Color(0xFF000000);
  static const Color solidWhite = Color(0xFFffffff);

  static final LinearGradient gradient = LinearGradient(
    colors: [
      primaryColor600,
      primaryColor700,
      primaryColor800,
      primaryColor900,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
