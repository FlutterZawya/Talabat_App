import 'package:flutter/material.dart';
import 'package:talabat_app/features/auth/presentation/views/widgets/custom_auth_app_bar.dart';
import 'package:talabat_app/features/auth/presentation/views/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAuthAppBar(context, title: 'welcome to talabat'),
      body: SignUpViewBody(),
    );
  }
}
