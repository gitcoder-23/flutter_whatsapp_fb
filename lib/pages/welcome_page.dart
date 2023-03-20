import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_fb/common/extension/custom_theme_extension.dart';
import 'package:flutter_whatsapp_fb/widgets/custom_elevated_button.dart';
import 'package:flutter_whatsapp_fb/widgets/language_button.dart';
import 'package:flutter_whatsapp_fb/widgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  onBtnPressed() {
    print('Ho');
  }

  onLangBtnTap() {
    print('onLangBtnTap--> ${ThemeMode.system}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: mainBackgroundDark,
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: Platform.isAndroid ? 40 : 10,
                ),
                child: Image.asset(
                  'assets/images/circle.png',
                  // color: greenDark,
                  // taken from system dynamic color
                  color: context.theme.circleImageColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Welcome to WhatsApp',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const PrivacyAndTerms(),
                CustomElevatedButton(
                  btnHeight: 42,
                  btnWidth: MediaQuery.of(context).size.width - 100,
                  onBtnPressed: onBtnPressed,
                  btnName: 'AGREE AND CONTINUE',
                ),
                const SizedBox(
                  height: 50,
                ),
                LanguageButton(
                  onLangBtnTap: onLangBtnTap,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
