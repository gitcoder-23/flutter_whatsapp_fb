import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_fb/common/extension/custom_theme_extension.dart';
import 'package:flutter_whatsapp_fb/components/constants/colors.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    // ignore: deprecated_member_use
    backgroundColor: mainBackgroundLight,
    scaffoldBackgroundColor: mainBackgroundLight,
    extensions: [CustomThemeExtension.lightMode],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: greenLight,
        foregroundColor: mainBackgroundLight,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: kTransparent,
      ),
    ),
  );
}
