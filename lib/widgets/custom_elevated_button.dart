import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_fb/components/constants/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final double btnHeight;
  final double btnWidth;
  final onBtnPressed;
  final String btnName;
  final Color backgroundColor;
  final Color foregroundColor;
  const CustomElevatedButton({
    required this.btnHeight,
    required this.btnWidth,
    required this.btnName,
    required this.onBtnPressed,
    required this.backgroundColor,
    required this.foregroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: btnHeight,
      width: btnWidth,
      child: ElevatedButton(
        onPressed: onBtnPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: kTransparent,
        ),
        child: Text(
          btnName,
        ),
      ),
    );
  }
}
