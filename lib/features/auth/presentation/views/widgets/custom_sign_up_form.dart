import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:talabat_app/core/utils/functions/text_form_validation.dart';
import 'package:talabat_app/core/utils/styles/app_styles.dart';
import 'package:talabat_app/core/utils/widgets/custom_button.dart';
import 'package:talabat_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:talabat_app/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:talabat_app/features/auth/presentation/views/widgets/custom_email_text_form.dart';
import 'package:talabat_app/features/auth/presentation/views/widgets/custom_password_text_from.dart';

class CustomSignUpForm extends StatefulWidget {
  const CustomSignUpForm({super.key});

  @override
  State<CustomSignUpForm> createState() => _CustomSignUpFormState();
}

class _CustomSignUpFormState extends State<CustomSignUpForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey();
  bool obscure = true;
  bool? checkBox = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: loginFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFormField(
              labelText: 'First name',
              controller: firstNameController,
              validator: (name) {
                return validateUsername(name);
              },
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              labelText: 'Last name',
              controller: lastNameController,
              validator: (name) {
                return validateUsername(name);
              },
            ),
            SizedBox(
              height: 20,
            ),
            CustomEmailTextFormField(emailController: emailController),
            SizedBox(
              height: 20,
            ),
            CustomPasswordTextFormField(
                passwordController: passwordController,
                obscure: obscure,
                onPressed: () {
                  setState(() {
                    obscure = !obscure;
                  });
                }),
            SizedBox(
              height: 5,
            ),
            Text(
              'Passwords should be between 8 and 16 characters',
              style: AppStyles.medium12,
            ),
            SizedBox(
              height: 30,
            ),
            CustomCheckBox(
              value: checkBox,
              onChanged: (value) {
                setState(() {
                  checkBox = value;
                });
              },
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(
              text: 'Create your account',
              onPressed: () {
                if (loginFormKey.currentState!.validate() && checkBox == true) {
                  FocusScope.of(context).unfocus();
                  emailController.clear();
                  passwordController.clear();
                  lastNameController.clear();
                  firstNameController.clear();
                  log("success");
                } else {
                  log("not");
                }
              },
            ),
          ],
        ));
  }
}
