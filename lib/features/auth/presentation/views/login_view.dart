import 'package:flutter/material.dart';

import 'widgets/custom_auth_app_bar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAuthAppBar(context),
    );
  }
}
