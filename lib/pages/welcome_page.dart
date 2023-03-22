import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_fb/common/extension/custom_theme_extension.dart';
import 'package:flutter_whatsapp_fb/components/constants/colors.dart';
import 'package:flutter_whatsapp_fb/widgets/custom_elevated_button.dart';
import 'package:flutter_whatsapp_fb/widgets/custom_icon_button.dart';
import 'package:flutter_whatsapp_fb/widgets/language_button.dart';
import 'package:flutter_whatsapp_fb/widgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  onBtnPressed() {
    print('Ho');
  }

  onLangShowBottomSheet(context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 4,
                width: 30,
                decoration: BoxDecoration(
                  color: context.theme.greyColor?.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  CustomIconButton(
                    onIconBtnTap: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icons.close_outlined,
                    iconColor: greyDark,
                    splashColor: kTransparent,
                    splashRadius: 22,
                    iconSize: 22,
                    minWidth: 40,
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //     // to close modal
                  //     Navigator.of(context).pop();
                  //   },
                  //   splashColor: kTransparent,
                  //   splashRadius: 22,
                  //   iconSize: 22,
                  //   padding: EdgeInsets.zero,
                  //   constraints: const BoxConstraints(
                  //     minWidth: 40,
                  //   ),
                  //   icon: Icon(
                  //     Icons.close_outlined,
                  //     color: greyDark,
                  //   ),
                  // ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'App Language',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                color: context.theme.greyColor?.withOpacity(0.3),
                thickness: 0.5,
              ),
              RadioListTile(
                value: true,
                groupValue: true,
                activeColor: greenDark,
                title: const Text('English'),
                subtitle: Text(
                  "(Default language)",
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                ),
                onChanged: (value) {},
              ),
              RadioListTile(
                value: true,
                groupValue: false,
                activeColor: greenDark,
                title: const Text('Hindi'),
                subtitle: Text(
                  "(Hindi language)",
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                ),
                onChanged: (value) {},
              ),
            ],
          ),
        );
      },
    );
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
                  onLangShowBottomSheet: onLangShowBottomSheet,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
