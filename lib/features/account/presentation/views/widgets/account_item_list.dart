import 'package:flutter/widgets.dart';

import 'account_item.dart';

class AccountItemList extends StatelessWidget {
  const AccountItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(0),
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 40),
            child: AccountItems(),
          );
        });
  }
}
