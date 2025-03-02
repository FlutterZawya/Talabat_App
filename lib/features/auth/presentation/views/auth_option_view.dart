import 'package:flutter/material.dart';
import 'widgets/auth_option_view_body.dart';

class AuthOptionView extends StatelessWidget {
  const AuthOptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthOptionBody(),
    );
  }
}
