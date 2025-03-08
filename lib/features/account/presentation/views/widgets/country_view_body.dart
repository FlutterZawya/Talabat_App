import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import 'custom_country_item.dart';

class CountryViewBody extends StatelessWidget {
  const CountryViewBody({
    super.key,
    required this.countries,
  });

  final List<Country> countries;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(countries.length, (index) {
        return Column(
          children: [
            Divider(
              indent: 16,
            ),
            CustomCountryItem(
              country: countries[index],
              index: index,
            ),
            index == 8
                ? Divider(
                    indent: 16,
                  )
                : SizedBox()
          ],
        );
      }),
    );
  }
}
