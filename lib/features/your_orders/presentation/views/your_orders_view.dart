import 'package:flutter/material.dart';

import '../../../auth/presentation/views/widgets/custom_auth_app_bar.dart';
import 'widgets/your_orders_view_body.dart';

class YourOrdersView extends StatelessWidget {
  const YourOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAuthAppBar(
        context,
        title: 'Your orders',
      ),
      body: const YourOrdersViewBody(),
    );
  }
}
