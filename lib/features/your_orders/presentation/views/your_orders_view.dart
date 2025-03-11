import 'package:flutter/material.dart';

import '../../../auth/presentation/views/widgets/custom_auth_app_bar.dart';

class YourOrdersView extends StatelessWidget {
  const YourOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAuthAppBar(context),
    );
  }
}
