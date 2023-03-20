import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final double btnHeight;
  final double btnWidth;
  final onBtnPressed;
  final String btnName;
  const CustomElevatedButton({
    required this.btnHeight,
    required this.btnWidth,
    required this.btnName,
    required this.onBtnPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: btnHeight,
      width: btnWidth,
      child: ElevatedButton(
        onPressed: onBtnPressed,
        // Auto generated from theme system

        // darkTheme  && lightTheme

        // style: ElevatedButton.styleFrom(
        //   backgroundColor: greenDark,
        //   foregroundColor: mainBackgroundDark,
        //   splashFactory: NoSplash.splashFactory,
        //   elevation: 0,
        //   shadowColor: kTransparent,
        // ),
        child: Text(
          btnName,
        ),
      ),
    );
  }
}
