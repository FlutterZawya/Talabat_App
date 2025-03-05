import 'package:flutter/material.dart';
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
        PersonAccountListTile()
      ],
    );
  }
}

