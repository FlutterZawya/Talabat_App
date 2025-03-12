import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../styles/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor = AppColors.main,
    this.textColor = AppColors.white,
    this.borderRadius = 10,
    this.height = 55,
    this.width,
  });
  final String text;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final double height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: width ?? double.infinity,
      height: height,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: BorderSide(color: AppColors.main, width: 1.5),
      ),
      color: backgroundColor,
      child: Text(
        text,
        style: AppStyles.medium14.copyWith(color: textColor),
      ),
    );
  }
}
