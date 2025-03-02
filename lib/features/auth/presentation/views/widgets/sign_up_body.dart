import 'package:flutter/widgets.dart';
import 'package:talabat_app/core/utils/styles/app_styles.dart';
import 'package:talabat_app/features/auth/presentation/views/widgets/custom_sign_up_form.dart';
import 'package:talabat_app/features/auth/presentation/views/widgets/terms_and_privcy_text.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

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
          TermsAndPrivcyText()
        ],
      ),
    );
  }
}
