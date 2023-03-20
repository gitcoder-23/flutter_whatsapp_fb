import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_fb/components/constants/colors.dart';

class LanguageButton extends StatelessWidget {
  final onLangBtnTap;
  const LanguageButton({
    required this.onLangBtnTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF182229),
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: onLangBtnTap,
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: const Color(0xFF09141A),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.language,
                color: greenDark,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'English',
                style: TextStyle(
                  color: greenDark,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: greenDark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
