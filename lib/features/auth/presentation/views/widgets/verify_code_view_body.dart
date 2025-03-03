import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_styles.dart';

class VerifyCodeViewBody extends StatelessWidget {
  const VerifyCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        children: [
          SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: Text('Enter the OTP sent to your email',
                style: AppStyles.bold20),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
