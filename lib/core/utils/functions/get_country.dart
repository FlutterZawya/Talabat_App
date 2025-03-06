import 'package:country_picker/country_picker.dart';

List<Country> getCountry() {
  List<String> countriesCode = [
    "KW",
    "SA",
    "BH",
    "AE",
    "OM",
    "QA",
    "JO",
    "EG",
    "IQ"
  ];
  return CountryService()
      .getAll()
      .where((country) => countriesCode.contains(country.countryCode))
      .map((country) => country)
      .toList();
}
