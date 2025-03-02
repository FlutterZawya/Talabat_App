import 'package:flutter/material.dart';
import 'package:talabat_app/core/utils/styles/app_colors.dart';
import 'package:talabat_app/core/utils/styles/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final TextEditingController? controller;
  final Widget? suffix;
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.validator,
    this.obscureText = false,
    this.controller,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      validator: validator,
      cursorColor: AppColors.main,
      decoration: InputDecoration(
        label: Text(labelText),
        labelStyle: AppStyles.medium14.copyWith(color: AppColors.grey400),
        suffix: suffix,
        focusedBorder: customBorder(),
        enabledBorder: customBorder(),
      ),
    );
  }

  UnderlineInputBorder customBorder() {
    return UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.grey400,
      ),
    );
  }
}
