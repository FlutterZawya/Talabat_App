import 'package:flutter/material.dart';

import 'widgets/custom_auth_app_bar.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAuthAppBar(context, title: 'Forgot password'),
    );
  }
}
