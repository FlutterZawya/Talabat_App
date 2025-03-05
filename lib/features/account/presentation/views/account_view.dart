import 'package:flutter/material.dart';
import 'package:talabat_app/core/utils/styles/app_colors.dart';
import 'widgets/person_account_list_tile.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        PersonAccountListTile(),
        Divider(
          thickness: 8,
          color: AppColors.grey200,
        )
      ],
    );
  }
}
