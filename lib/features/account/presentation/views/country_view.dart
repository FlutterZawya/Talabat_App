import 'package:flutter/material.dart';
import 'package:talabat_app/features/auth/presentation/views/widgets/custom_auth_app_bar.dart';
import '../../../../core/utils/functions/get_country.dart';
import 'widgets/country_view_body.dart';


class CountryView extends StatelessWidget {
  const CountryView({super.key});

  @override
  Widget build(BuildContext context) {
    final countries = getCountry();
    return Scaffold(
      appBar: customAuthAppBar(context, title: 'Where will we deliver to?'),
      body: CountryViewBody(countries: countries),
    );
  }
}

