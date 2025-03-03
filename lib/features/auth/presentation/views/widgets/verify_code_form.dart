import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';

class VerifyCodeForm extends StatelessWidget {
  const VerifyCodeForm({
    super.key,
    required this.onCompleted,
    required this.onTapProceed,
    this.onTapResendCode,
  });
  final void Function(String)? onCompleted;
  final dynamic Function()? onTapProceed;
  final dynamic Function()? onTapResendCode;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: AppStyles.bold18,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey400),
        borderRadius: BorderRadius.circular(8),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColors.main),
    );

    final submittedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColors.blue),
    );

    return Column(
      children: [
        const SizedBox(height: 30),
        Pinput(
          length: 6,
          defaultPinTheme: defaultPinTheme,
          focusedPinTheme: focusedPinTheme,
          submittedPinTheme: submittedPinTheme,
          pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
          showCursor: true,
          onCompleted: onCompleted,
        ),
        const SizedBox(height: 30),
        CustomButton(onPressed: onTapProceed, text: 'Proceed'),
      ],
    );
  }
}
