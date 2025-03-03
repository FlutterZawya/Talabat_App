import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routes/app_routes.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import 'custom_email_text_form.dart';

class VerifyEmailForm extends StatelessWidget {
  const VerifyEmailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: 20),
          CustomEmailTextFormField(),
          SizedBox(height: 40),
          CustomButton(
            text: 'Continue',
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRoutes.verifyCodeView);
            },
          )
        ],
      ),
    );
  }
}
