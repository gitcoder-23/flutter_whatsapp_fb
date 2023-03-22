import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_fb/components/constants/colors.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static CustomThemeExtension lightMode = CustomThemeExtension(
    circleImageColor: const Color(0xFF25D366),
    greyColor: greyLight,
    blueColor: blueLight,
    langBtnBgColor: const Color(0xFFF7F8FA),
    langBtnHighlightColor: const Color(0xFFE8E8ED),
    greenColor: greenLight,
    authAppbarTextColor: authAppbarTextLight,
  );

  static CustomThemeExtension darkMode = CustomThemeExtension(
    circleImageColor: greenDark,
    greyColor: greyDark,
    blueColor: blueDark,
    langBtnBgColor: const Color(0xFF182229),
    langBtnHighlightColor: const Color(0xFF09141A),
    greenColor: greenDark,
    authAppbarTextColor: authAppbarTextDark,
  );

  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHighlightColor;
  final Color? greenColor;
  final Color? authAppbarTextColor;

  CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langBtnBgColor,
    this.langBtnHighlightColor,
    this.greenColor,
    this.authAppbarTextColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBtnBgColor,
    Color? langBtnHighlightColor,
    Color? greenColor,
    Color? authAppbarTextColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBtnBgColor: langBtnBgColor ?? this.langBtnBgColor,
      authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,
      langBtnHighlightColor:
          langBtnHighlightColor ?? this.langBtnHighlightColor,
      greenColor: greenColor ?? this.greenColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor, t),
      authAppbarTextColor:
          Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t),
      langBtnHighlightColor:
          Color.lerp(langBtnHighlightColor, other.langBtnHighlightColor, t),
      greenColor: Color.lerp(greenColor, other.greenColor, t),
    );
  }
}
