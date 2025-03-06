import 'package:flutter/material.dart';
import 'account_item_list.dart';
import 'person_account_list_tile.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        PersonAccountListTile(),
        Divider(
          thickness: 10,
          color: Color(0xffF6F6F6),
        ),
        SizedBox(
          height: 30,
        ),
        AccountItemList(),
      ],
    );
  }
}
