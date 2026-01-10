import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentara_property_clone/src/core/routes/app_routes.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';

class RentaraPropertyApp extends StatelessWidget {
  const RentaraPropertyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp.router(
          theme: ThemeData(
            useMaterial3: true,
            textTheme: ThemeData.light().textTheme.apply(fontFamily: "Manrope"),
            colorScheme: ColorScheme.fromSeed(
              seedColor: AppColors.primaryColor600,
            ),
          ),
          debugShowCheckedModeBanner: false,
          showPerformanceOverlay: true,
          themeMode: ThemeMode.light,
          routerConfig: AppRoutes.route(),
          supportedLocales: const [Locale('id'), Locale('en')],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        );
      },
    );
  }
}
