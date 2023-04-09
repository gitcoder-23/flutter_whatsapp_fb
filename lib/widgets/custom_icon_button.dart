import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_fb/components/constants/colors.dart';
import 'package:flutter_whatsapp_fb/common/extension/custom_theme_extension.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onIconBtnTap;
  final IconData icon;
  final Color? iconColor;
  final Color? splashColor;
  final double? iconSize;
  final double? splashRadius;
  final double? minWidth;
  final Color? background;
  final BoxBorder? border;

  const CustomIconButton({
    required this.onIconBtnTap,
    required this.icon,
    this.iconColor,
    this.splashColor,
    this.iconSize,
    this.splashRadius,
    this.minWidth,
    this.background,
    this.border,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: background,
        border: border,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onIconBtnTap,
        splashColor: splashColor ?? kTransparent,
        // splashRadius: splashRadius ?? 22,
        splashRadius: (minWidth ?? 45) - 25,
        iconSize: iconSize ?? 22,
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(
          minWidth: minWidth ?? 45,
          minHeight: minWidth ?? 45,
        ),
        icon: Icon(
          icon,
          color: iconColor ?? context.theme.greyColor,
        ),
      ),
    );
  }
}
