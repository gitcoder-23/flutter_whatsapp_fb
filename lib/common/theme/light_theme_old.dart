import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_whatsapp_fb/components/constants/colors.dart';

import '../extension/custom_theme_extension.dart';

ThemeData lightThemeOld() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    scaffoldBackgroundColor: mainBackgroundLight,
    extensions: [CustomThemeExtension.lightMode],
    appBarTheme: AppBarTheme(
      backgroundColor: greenLight,
      titleTextStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: Colors.white,
          width: 2,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: greenLight,
        foregroundColor: mainBackgroundLight,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: mainBackgroundLight,
      modalBackgroundColor: mainBackgroundLight,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    ),
    dialogBackgroundColor: mainBackgroundLight,
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: greenDark,
      foregroundColor: Colors.white,
    ),
    listTileTheme: ListTileThemeData(
      iconColor: greyDark,
      tileColor: mainBackgroundLight,
    ),
    switchTheme: const SwitchThemeData(
      thumbColor: MaterialStatePropertyAll(Color(0xFF83939C)),
      trackColor: MaterialStatePropertyAll(Color(0xFFDADFE2)),
    ),
    // colorScheme: ColorScheme(
    //   background: mainBackgroundLight,
    //   brightness: Brightness.light,
    //   primary: mainBackgroundLight,
    //   onPrimary: mainBackgroundLight,
    //   secondary: mainBackgroundLight,
    //   onSecondary: mainBackgroundLight, error: null, onBackground: null, onError: null, onSurface: null, surface: null,
    // ),
  );
}
