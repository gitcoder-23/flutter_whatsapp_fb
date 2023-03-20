import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_fb/common/extension/custom_theme_extension.dart';
import 'package:flutter_whatsapp_fb/components/constants/colors.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    // ignore: deprecated_member_use
    backgroundColor: mainBackgroundDark,
    scaffoldBackgroundColor: mainBackgroundDark,
    extensions: [CustomThemeExtension.darkMode],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: greenDark,
        foregroundColor: mainBackgroundDark,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: kTransparent,
      ),
    ),
  );
}
