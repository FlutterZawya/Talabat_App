import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talabat_app/core/utils/routes/app_routes.dart';

import '../../../../../core/utils/functions/get_country.dart';
import '../../../../../core/utils/styles/app_styles.dart';

class PersonAccountListTile extends StatelessWidget {
  const PersonAccountListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final String flag = getCountryFlag('AE');
    return ListTile(
      title: Text(
        'Hi Guest',
        style: AppStyles.regular16,
      ),
      subtitle: Text(
        '$flag UAE',
        style: AppStyles.regular12.copyWith(color: Colors.grey),
      ),
      leading: CircleAvatar(
        backgroundColor: Color(0xffFFEEE6),
        child: Text(
          'H',
          style: AppStyles.regular16,
        ),
      ),
      trailing: IconButton(
        onPressed: () {
          GoRouter.of(context).push(AppRoutes.accountSettings);
        },
        icon: Icon(Icons.settings_sharp),
      ),
    );
  }
}
