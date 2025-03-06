import 'package:flutter/material.dart';
import 'package:talabat_app/features/auth/presentation/views/widgets/custom_auth_app_bar.dart';

import '../../../../core/utils/functions/get_country.dart';
import 'widgets/custom_country_item.dart';

class CountryView extends StatelessWidget {
  const CountryView({super.key});

  @override
  Widget build(BuildContext context) {
    final countries = getCountry();
    return Scaffold(
      appBar: customAuthAppBar(context, title: 'Where will we deliver to?'),
      body: Column(
        children: List.generate(countries.length, (index) {
          return Column(
            children: [
              Divider(),
              CustomCountryItem(
                country: countries[index],
              ),
            ],
          );
        }),
      ),
    );
  }
}
