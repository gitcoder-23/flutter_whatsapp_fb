import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_whatsapp_fb/common/extension/custom_theme_extension.dart';
import 'package:flutter_whatsapp_fb/components/constants/colors.dart';

ThemeData darkThemeOld() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    // backgroundColor: mainBackgroundDark,
    scaffoldBackgroundColor: mainBackgroundDark,
    extensions: [CustomThemeExtension.darkMode],
    appBarTheme: AppBarTheme(
      backgroundColor: greyBackground,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: greyDark,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      iconTheme: IconThemeData(
        color: greyDark,
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: greenDark,
          width: 2,
        ),
      ),
      unselectedLabelColor: greyDark,
      labelColor: greenDark,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: greenDark,
        foregroundColor: mainBackgroundDark,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
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
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: greenDark,
      foregroundColor: Colors.white,
    ),
    listTileTheme: ListTileThemeData(
      iconColor: greyDark,
      tileColor: mainBackgroundDark,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStatePropertyAll(greyDark),
      trackColor: const MaterialStatePropertyAll(Color(0xFF344047)),
    ),
  );
}
