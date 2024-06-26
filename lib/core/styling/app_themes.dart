import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  static ThemeData defaultTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.appBGColor,
    dividerColor: Colors.transparent,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff272D69)),
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Colors.transparent),
  );
}
