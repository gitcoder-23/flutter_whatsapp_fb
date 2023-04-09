import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_fb/common/extension/custom_theme_extension.dart';

class ShortHBar extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  const ShortHBar({
    this.height,
    this.width,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 4,
      width: width ?? 25,
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: color ?? context.theme.greyColor!.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
