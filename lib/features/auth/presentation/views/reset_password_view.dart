import 'package:flutter/material.dart';

import 'widgets/custom_auth_app_bar.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAuthAppBar(context, title: 'Reset password'),
      // body: ResetPasswordViewBody(),
    );
  }
}
