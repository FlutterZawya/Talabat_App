import 'package:flutter/material.dart';
import 'package:talabat_app/core/utils/styles/app_colors.dart';
import 'package:talabat_app/features/auth/presentation/views/widgets/custom_auth_app_bar.dart';

import 'widgets/account_setting_item.dart';
import 'widgets/custom_divider.dart';

class AccountSettingsView extends StatelessWidget {
  const AccountSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAuthAppBar(context, title: 'Settings'),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          AccountSettingItem(
            title: 'Notifications',
            text: 'Enabled',
          ),
          SizedBox(
            height: 30,
          ),
          CustomDivider(),

        ],
      ),
    );
  }
}


