import 'package:flutter/material.dart';
import 'package:talabat_app/features/auth/presentation/views/widgets/custom_auth_app_bar.dart';

class AccountSettingsView extends StatelessWidget {
  const AccountSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAuthAppBar(context, title: 'Settings'),
    );
  }
}
