import 'package:flutter/material.dart';

import 'your_orders_card.dart';

class YourOrdersViewBody extends StatelessWidget {
  const YourOrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        YourOrdersCard(),
      ],
    );
  }
}
