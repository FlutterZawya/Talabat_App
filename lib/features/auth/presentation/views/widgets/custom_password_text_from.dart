import 'package:flutter/material.dart';
import 'package:talabat_app/core/utils/functions/text_form_validation.dart';
import 'package:talabat_app/core/utils/widgets/custom_text_form_field.dart';

class CustomPasswordTextFormField extends StatelessWidget {
  const CustomPasswordTextFormField({
    super.key,
    required this.passwordController,
    required this.obscure,
    required this.onPressed,
    required this.text,
  });

  final TextEditingController passwordController;
  final bool obscure;
  final void Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: text,
      controller: passwordController,
      obscureText: obscure,
      suffix: IconButton(
        onPressed: onPressed,
        icon: obscure ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
      ),
      validator: (password) {
        return validatePassword(password);
      },
    );
  }
}
