import 'package:flutter/widgets.dart';
import '../../../../../core/utils/functions/account_item_map.dart';
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
          Map<String, String> items = selectAccountItem();
          return Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 40),
            child: AccountItems(
              text: items.values.elementAt(index),
              image: items.keys.elementAt(index),
            ),
          );
        });
  }
}
