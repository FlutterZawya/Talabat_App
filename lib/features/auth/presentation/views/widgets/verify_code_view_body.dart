import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routes/app_routes.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import 'verify_code_form.dart';

class VerifyCodeViewBody extends StatelessWidget {
  const VerifyCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            child: Text('Enter the OTP sent to your email',
                style: AppStyles.bold20),
          ),
          SizedBox(height: 20),
          VerifyCodeForm(
            onCompleted: (code) {
              log(code);
            },
            onTapProceed: () {
              log('code');
              GoRouter.of(context).push(AppRoutes.resetPasswordView);
            },
          ),
        ],
      ),
    );
  }
}
