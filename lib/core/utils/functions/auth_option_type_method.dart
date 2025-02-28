import 'package:talabat_app/core/enum/auth_option_type.dart';
import 'package:talabat_app/core/models/auth_option_data.dart';

AuthOptionData authOptionTypeMethod(AuthOptionType type) {
  switch (type) {
    case AuthOptionType.google:
      return authOptionData[0];
    case AuthOptionType.facebook:
      return authOptionData[1];
    case AuthOptionType.email:
      return authOptionData[2];
    case AuthOptionType.apple:
      return authOptionData[3];
  }
}
