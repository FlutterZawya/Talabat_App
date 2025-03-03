import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/enum/auth_option_type.dart';
import '../../../../../core/utils/routes/app_routes.dart';
import '../../../../../core/utils/styles/app_images.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import 'custom_auth_option_button.dart';

class AuthOptionViewBody extends StatelessWidget {
  const AuthOptionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppImages.imagesAuthOption),
        Flexible(
          child: Image.asset(AppImages.imagesAuthView, fit: BoxFit.cover),
        ),
        Text(
          'Log in or create an account',
          style: AppStyles.medium18,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          'Receive rewards and save your details for a faster checkout\nexperience.',
          style: AppStyles.medium14,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 25),
        CustomAuthOptionButton(onpressed: () {}, type: AuthOptionType.google),
        SizedBox(height: 10),
        CustomAuthOptionButton(onpressed: () {}, type: AuthOptionType.facebook),
        SizedBox(height: 10),
        CustomAuthOptionButton(onpressed: () {}, type: AuthOptionType.apple),
        SizedBox(height: 10),
        CustomAuthOptionButton(
            onpressed: () {
              GoRouter.of(context).push(AppRoutes.loginView);
            },
            type: AuthOptionType.email),
        SizedBox(height: 10),
      ],
    );
  }
}
