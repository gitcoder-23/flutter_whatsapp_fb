import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_whatsapp_fb/common/extension/custom_theme_extension.dart';
import 'package:flutter_whatsapp_fb/components/constants/colors.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    // ignore: deprecated_member_use
    backgroundColor: mainBackgroundDark,
    scaffoldBackgroundColor: mainBackgroundDark,
    extensions: [CustomThemeExtension.darkMode],
    appBarTheme: AppBarTheme(
      titleTextStyle: const TextStyle(fontSize: 18),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: kTransparent,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: greenDark,
        foregroundColor: mainBackgroundDark,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: kTransparent,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: greyBackground,
      modalBackgroundColor: greyBackground,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    ),
    dialogBackgroundColor: greyBackground,
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
