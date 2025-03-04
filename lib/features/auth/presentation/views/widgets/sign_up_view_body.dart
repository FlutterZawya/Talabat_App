import 'package:flutter/widgets.dart';

import '../../../../../core/utils/styles/app_styles.dart';
import 'custom_sign_up_form.dart';
import 'terms_and_privcy_text.dart';
class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Create your account',
            style: AppStyles.bold20,
          ),
          SizedBox(
            height: 20,
          ),
          CustomSignUpForm(),
          SizedBox(
            height: 20,
          ),
          TermsAndPrivcyText(),
        ],
      ),
    );
  }
}
