import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_whatsapp_fb/common/extension/custom_theme_extension.dart';
import 'package:flutter_whatsapp_fb/components/constants/colors.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    // ignore: deprecated_member_use
    backgroundColor: mainBackgroundLight,
    scaffoldBackgroundColor: mainBackgroundLight,
    extensions: [CustomThemeExtension.lightMode],

    appBarTheme: AppBarTheme(
      backgroundColor: greenLight,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: greyLight,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: kTransparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(
        color: kWhite,
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: kWhite,
          width: 2,
        ),
      ),
      unselectedLabelColor: const Color(0xFFB3D9D2),
      labelColor: kWhite,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: greenLight,
        foregroundColor: mainBackgroundLight,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: kTransparent,
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
      foregroundColor: kWhite,
    ),
  );
}
