import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:talabat_app/core/utils/functions/text_form_validation.dart';
import 'package:talabat_app/core/utils/styles/app_colors.dart';
import 'package:talabat_app/core/utils/styles/app_styles.dart';
import 'package:talabat_app/core/utils/widgets/custom_button.dart';
import 'package:talabat_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:talabat_app/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:talabat_app/features/auth/presentation/views/widgets/custom_email_text_form.dart';
import 'package:talabat_app/features/auth/presentation/views/widgets/custom_password_text_from.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField(
          labelText: 'First name',
          validator: (name) {
            return validateUsername(name);
          },
        ),
        SizedBox(
          height: 20,
        ),
        CustomTextFormField(
          labelText: 'Last name',
          validator: (name) {
            return validateUsername(name);
          },
        ),
        SizedBox(
          height: 20,
        ),
        CustomEmailTextFormField(),
        SizedBox(
          height: 20,
        ),
        CustomPasswordTextFormField(),
        SizedBox(
          height: 5,
        ),
        Text('Passwords should be between 8 and 16 characters',
            style: AppStyles.medium12.copyWith(color: AppColors.grey500)),
        SizedBox(
          height: 30,
        ),
        CustomCheckBox(
          value: true,
          onChanged: (value) {},
        ),
        SizedBox(
          height: 30,
        ),
        CustomButton(
          text: 'Create your account',
          onPressed: () {},
        ),
      ],
    );
  }
}
