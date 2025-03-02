import 'package:flutter/material.dart';
import 'package:talabat_app/core/utils/styles/app_colors.dart';
import 'package:talabat_app/core/utils/styles/app_styles.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, this.onChanged, this.value});
  final void Function(bool?)? onChanged;
  final bool? value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: AppColors.main,
          splashRadius: 0.5,
        ),
        SizedBox(width: 5),
        Text(
          'Yes, I want to receive offers and discounts',
          style: AppStyles.medium12.copyWith(color: AppColors.black),
        ),
      ],
    );
  }
}
