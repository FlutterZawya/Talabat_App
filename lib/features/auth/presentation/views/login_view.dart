import 'package:flutter/material.dart';

import 'widgets/custom_auth_app_bar.dart';
import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAuthAppBar(context),
      body: LoginViewBody(),
    );
  }
}
