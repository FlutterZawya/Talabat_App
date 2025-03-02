import 'package:flutter/widgets.dart';
import 'package:talabat_app/core/utils/styles/app_styles.dart';
import 'package:talabat_app/features/auth/presentation/views/widgets/custom_sign_up_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          'Create your account',
          style: AppStyles.bold20,
        ),
        SizedBox(
          height: 20,
        ),
        CustomSignUpForm(),
      ],
    );
  }
}
