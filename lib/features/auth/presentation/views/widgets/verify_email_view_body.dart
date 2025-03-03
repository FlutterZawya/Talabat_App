import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_styles.dart';
import 'verify_email_form.dart';

class VerifyEmailViewBody extends StatelessWidget {
  const VerifyEmailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        children: [
          SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            child: Text('Enter your email', style: AppStyles.bold20),
          ),
          VerifyEmailForm(),
        ],
      ),
    );
  }
}
