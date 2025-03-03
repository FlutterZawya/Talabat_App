import 'package:flutter/material.dart';

import 'widgets/custom_auth_app_bar.dart';
import 'widgets/verify_code_view_body.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAuthAppBar(context, title: 'Forgot password'),
      body: VerifyCodeViewBody(),
    );
  }
}
