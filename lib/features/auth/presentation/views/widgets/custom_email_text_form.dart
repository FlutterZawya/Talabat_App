import 'package:flutter/material.dart';
import 'package:talabat_app/core/utils/functions/text_form_validation.dart';
import 'package:talabat_app/core/utils/widgets/custom_text_form_field.dart';

class CustomEmailTextFormField extends StatelessWidget {
  const CustomEmailTextFormField({
    super.key,
    this.emailController,
  });

  final TextEditingController? emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelText: 'Email Address',
      controller: emailController,
      validator: (email) {
        return validateEmail(email);
      },
    );
  }
}
