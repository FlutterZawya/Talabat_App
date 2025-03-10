import '../../../data/enums/rate_type.dart';

RateType getRateType(int rate) {
  // from 1 to 5
  switch (rate) {
    case 1:
      return RateType.poor;
    case 2:
      return RateType.notGood;
    case 3:
      return RateType.average;
    case 4:
      return RateType.veryGood;
    case 5:
      return RateType.excellent;
    default:
      return RateType.average;
  }
}
