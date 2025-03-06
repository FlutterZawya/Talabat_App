import 'package:flutter/material.dart';
import 'package:talabat_app/features/auth/presentation/views/widgets/custom_auth_app_bar.dart';


class CountryView extends StatelessWidget {
  const CountryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAuthAppBar(context,title: 'Where will we deliver to?'),
    );
  }
}