import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_fb/common/extension/custom_theme_extension.dart';

class LanguageButton extends StatelessWidget {
  final onLangShowBottomSheet;
  const LanguageButton({
    required this.onLangShowBottomSheet,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: const Color(0xFF182229),
      color: context.theme.langBtnBgColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => onLangShowBottomSheet(context),
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.langBtnHighlightColor,
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
                color: context.theme.greenColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'English',
                style: TextStyle(
                  color: context.theme.greenColor,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: context.theme.greenColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
