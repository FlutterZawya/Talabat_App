import 'package:flutter/material.dart';

import 'account_setting_item.dart';
import 'custom_divider.dart';

class AccountSettingViewBody extends StatelessWidget {
  const AccountSettingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        SizedBox(
          height: 20,
        ),
        AccountSettingItem(
          title: 'Notifications',
          text: 'Enabled',
        ),
        CustomDivider(),
        AccountSettingItem(
          title: 'Language',
          text: 'English',
        ),
        Divider(
          indent: 30,
        ),
        AccountSettingItem(
          title: 'Country',
          text: 'UAE',
        ),
        CustomDivider(),
        AccountSettingItem(
          title: 'Log in',
        ),
        CustomDivider(),
      ],
    );
  }
}
