import 'package:app_prototype/core/themes/app_color.dart';
import 'package:flutter/material.dart';

final class AppTheme {
  AppTheme._();

  static final appLightTheme = ThemeData(
    useMaterial3: true,
    textTheme: Typography().white.apply(fontFamily: "Quicksand"),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: const Color.fromARGB(255, 40, 78, 244),
    cardTheme: CardTheme(
      shadowColor: AppColor.cardShadowColor,
      color: AppColor.cardColor,
    ),
  );
}
