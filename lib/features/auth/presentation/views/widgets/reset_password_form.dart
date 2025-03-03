import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routes/app_routes.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import 'custom_password_text_from.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomPasswordTextFormField(),
          SizedBox(height: 20),
          CustomPasswordTextFormField(
            labelText: 'Confirm Password',
          ),
          SizedBox(height: 30),
          CustomButton(
            text: 'Reset Password',
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRoutes.completeView);
            },
          ),
        ],
      ),
    );
  }
}
