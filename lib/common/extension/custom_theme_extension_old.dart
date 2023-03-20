import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_fb/components/constants/colors.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtensionOld get theme {
    return Theme.of(this).extension<CustomThemeExtensionOld>()!;
  }
}

class CustomThemeExtensionOld extends ThemeExtension<CustomThemeExtensionOld> {
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBgColor;
  final Color? langHightlightColor;
  final Color? authAppbarTextColor;
  final Color? photoIconBgColor;
  final Color? photoIconColor;
  final Color? profilePageBg;
  final Color? chatTextFieldBg;
  final Color? chatPageBgColor;
  final Color? chatPageDoodleColor;
  final Color? senderChatCardBg;
  final Color? receiverChatCardBg;
  final Color? yellowCardBgColor;
  final Color? yellowCardTextColor;

  CustomThemeExtensionOld({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langBgColor,
    this.langHightlightColor,
    this.authAppbarTextColor,
    this.photoIconBgColor,
    this.photoIconColor,
    this.profilePageBg,
    this.chatTextFieldBg,
    this.chatPageBgColor,
    this.chatPageDoodleColor,
    this.senderChatCardBg,
    this.receiverChatCardBg,
    this.yellowCardBgColor,
    this.yellowCardTextColor,
  });

  CustomThemeExtensionOld lightMode = CustomThemeExtensionOld(
    circleImageColor: const Color(0xFF25D366),
    greyColor: greyLight,
    blueColor: blueLight,
    langBgColor: const Color(0xFFF7F8FA),
    langHightlightColor: const Color(0xFFE8E8ED),
    authAppbarTextColor: greenLight,
    photoIconBgColor: const Color(0xFFF1F1F1),
    photoIconColor: const Color(0xFF9DAAB3),
    profilePageBg: const Color(0xFFF7F8FA),
    chatTextFieldBg: Colors.white,
    chatPageBgColor: const Color(0xFFEFE7DE),
    chatPageDoodleColor: Colors.white70,
    senderChatCardBg: const Color(0xFFE7FFDB),
    receiverChatCardBg: const Color(0xFFFFFFFF),
    yellowCardBgColor: const Color(0xFFFFEECC),
    yellowCardTextColor: const Color(0xFF13191C),
  );

  CustomThemeExtensionOld darkMode = CustomThemeExtensionOld(
    circleImageColor: greenDark,
    greyColor: greyDark,
    blueColor: blueDark,
    langBgColor: const Color(0xFF182229),
    langHightlightColor: const Color(0xFF09141A),
    authAppbarTextColor: const Color(0xFFE9EDEF),
    photoIconBgColor: const Color(0xFF283339),
    photoIconColor: const Color(0xFF61717B),
    profilePageBg: const Color(0xFF0B141A),
    chatTextFieldBg: greyBackground,
    chatPageBgColor: const Color(0xFF081419),
    chatPageDoodleColor: const Color(0xFF172428),
    senderChatCardBg: const Color(0xFF005C4B),
    receiverChatCardBg: greyBackground,
    yellowCardBgColor: const Color(0xFF222E35),
    yellowCardTextColor: const Color(0xFFFFD279),
  );

  @override
  ThemeExtension<CustomThemeExtensionOld> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBgColor,
    Color? langHightlightColor,
    Color? authAppbarTextColor,
    Color? photoIconBgColor,
    Color? photoIconColor,
    Color? profilePageBg,
    Color? chatTextFieldBg,
    Color? chatPageBgColor,
    Color? chatPageDoodleColor,
    Color? senderChatCardBg,
    Color? receiverChatCardBg,
    Color? yellowCardBgColor,
    Color? yellowCardTextColor,
  }) {
    return CustomThemeExtensionOld(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBgColor: langBgColor ?? this.langBgColor,
      langHightlightColor: langHightlightColor ?? this.langHightlightColor,
      authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,
      photoIconBgColor: photoIconBgColor ?? this.photoIconBgColor,
      photoIconColor: photoIconColor ?? this.photoIconColor,
      profilePageBg: profilePageBg ?? this.profilePageBg,
      chatTextFieldBg: chatTextFieldBg ?? this.chatTextFieldBg,
      chatPageBgColor: chatPageBgColor ?? this.chatPageBgColor,
      chatPageDoodleColor: chatPageDoodleColor ?? this.chatPageDoodleColor,
      senderChatCardBg: senderChatCardBg ?? this.senderChatCardBg,
      receiverChatCardBg: receiverChatCardBg ?? this.receiverChatCardBg,
      yellowCardBgColor: yellowCardBgColor ?? this.yellowCardBgColor,
      yellowCardTextColor: yellowCardTextColor ?? this.yellowCardTextColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtensionOld> lerp(
      ThemeExtension<CustomThemeExtensionOld>? other, double t) {
    if (other is! CustomThemeExtensionOld) return this;
    return CustomThemeExtensionOld(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBgColor: Color.lerp(langBgColor, other.langBgColor, t),
      langHightlightColor:
          Color.lerp(langHightlightColor, other.langHightlightColor, t),
      authAppbarTextColor:
          Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t),
      photoIconBgColor: Color.lerp(photoIconBgColor, other.photoIconBgColor, t),
      photoIconColor: Color.lerp(photoIconColor, other.photoIconColor, t),
      profilePageBg: Color.lerp(profilePageBg, other.profilePageBg, t),
      chatTextFieldBg: Color.lerp(chatTextFieldBg, other.chatTextFieldBg, t),
      chatPageBgColor: Color.lerp(chatPageBgColor, other.chatPageBgColor, t),
      senderChatCardBg: Color.lerp(senderChatCardBg, other.senderChatCardBg, t),
      yellowCardBgColor:
          Color.lerp(yellowCardBgColor, other.yellowCardBgColor, t),
      yellowCardTextColor:
          Color.lerp(yellowCardTextColor, other.yellowCardTextColor, t),
      receiverChatCardBg:
          Color.lerp(receiverChatCardBg, other.receiverChatCardBg, t),
      chatPageDoodleColor:
          Color.lerp(chatPageDoodleColor, other.chatPageDoodleColor, t),
    );
  }
}
