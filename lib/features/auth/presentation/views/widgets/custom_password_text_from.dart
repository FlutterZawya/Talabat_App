import 'package:flutter/material.dart';
import 'package:talabat_app/core/utils/functions/text_form_validation.dart';
import 'package:talabat_app/core/utils/widgets/custom_text_form_field.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  const CustomPasswordTextFormField({
    super.key,
  });

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

TextEditingController passwordController = TextEditingController();
bool obscure = true;

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelText: 'Password',
      obscureText: obscure,
      controller: passwordController,
      suffix: IconButton(
        onPressed: () {
          setState(() {
            obscure = !obscure;
          });
        },
        icon: obscure ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
      ),
      validator: (password) {
        return validatePassword(password);
      },
    );
  }
}
