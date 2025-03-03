import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_app/core/utils/widgets/custom_text_button.dart';

import '../../../../../core/utils/routes/app_routes.dart';
import '../../../../../core/utils/styles/app_styles.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text('Continue with email', style: AppStyles.bold20),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextButton(
                text: 'Forgot password?',
                onPressed: () {
                  GoRouter.of(context).push(AppRoutes.verifyEmailView);
                },
              ),
              CustomTextButton(
                text: 'Create an account',
                onPressed: () {
                  GoRouter.of(context).push(AppRoutes.signUpView);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
