import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_styles.dart';


class PersonAccountListTile extends StatelessWidget {
  const PersonAccountListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Hi Guest',
        style: AppStyles.regular16,
      ),
      subtitle: Text(
        'UAE',
        style: AppStyles.regular12.copyWith(color: Colors.grey),
      ),
      leading: CircleAvatar(
        backgroundColor: Color(0xffFFEEE6),
        child: Text(
          'H',
          style: AppStyles.regular16,
        ),
      ),
      trailing: Icon(Icons.settings_sharp),
    );
  }
}
