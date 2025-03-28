import 'package:flutter/material.dart';

import '../../../../../core/utils/functions/text_form_validation.dart';
import '../../../../../core/utils/widgets/custom_text_form_field.dart';
class CustomPasswordTextFormField extends StatefulWidget {
  const CustomPasswordTextFormField({
    super.key,
    this.labelText,
  });
  final String? labelText;
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
      labelText:widget.labelText ?? 'Password',
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
