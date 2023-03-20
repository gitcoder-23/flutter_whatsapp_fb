import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_fb/components/constants/colors.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Read our ',
          style: TextStyle(
            color: greyDark,
            height: 1.5,
          ),
          children: [
            TextSpan(
              text: 'Privacy Policy.',
              style: TextStyle(
                color: blueDark,
              ),
            ),
            const TextSpan(
              text: 'Tap "Agree and Continue" to accept the ',
            ),
            TextSpan(
              text: 'Terms of Services.',
              style: TextStyle(
                color: blueDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
