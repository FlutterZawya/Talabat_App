import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_styles.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField(
      {super.key, this.onChanged, required this.hintText});
  final Function(String)? onChanged;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppStyles.medium18,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.main),
        ),
        hintText: hintText,
        hintStyle: AppStyles.regular14,
        prefixIcon: Icon(Icons.search),
      ),
      onChanged: onChanged,
    );
  }
}
