import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routes/app_routes.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import 'custom_email_text_form.dart';
import 'custom_password_text_from.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        // key: ,
        children: [
          CustomEmailTextFormField(),
          SizedBox(height: 20),
          CustomPasswordTextFormField(),
          SizedBox(height: 40),
          CustomButton(
            text: 'Login',
            onPressed: () {
              GoRouter.of(context).go(AppRoutes.talabatAppBottomNavBarView);
            },
          )
        ],
      ),
    );
  }
}
