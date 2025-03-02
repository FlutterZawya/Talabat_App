import 'package:flutter/material.dart';
import 'package:talabat_app/core/utils/styles/app_colors.dart';
import 'package:talabat_app/core/utils/styles/app_styles.dart';

class TermsAndPrivcyText extends StatelessWidget {
  const TermsAndPrivcyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      text: 'By creating an account you agree to the \',',
      style: AppStyles.medium12.copyWith(color: AppColors.black),
      children: [
        TextSpan(
            text: 'privacy policy',
            style: AppStyles.medium12.copyWith(color: AppColors.main)),
        TextSpan(
            text: ' and to the ',
            style: AppStyles.medium12.copyWith(color: AppColors.black)),
        TextSpan(
            text: 'terms of use',
            style: AppStyles.medium12.copyWith(color: AppColors.main)),
      ],
    ));
  }
}
