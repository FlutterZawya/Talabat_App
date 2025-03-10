import '../../../data/enums/rate_type.dart';

String getRateString(RateType rateType) {
  switch (rateType) {
    case RateType.poor:
      return 'Poor';
    case RateType.notGood:
      return 'Not Good';
    case RateType.average:
      return 'Average';
    case RateType.veryGood:
      return 'Very Good';
    case RateType.excellent:
      return 'Excellent';
  }
}
