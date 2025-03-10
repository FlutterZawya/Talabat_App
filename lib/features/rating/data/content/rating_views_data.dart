import '../models/rating_view_model.dart';

List<RatingViewModel> ratingViewsData = [
  rating1View,
  rating2View,
  rating3View,
  rating4View,
  rating5View,
  rating6View,
];

//////////////////////////////////////////////////////
RatingViewModel rating1View = RatingViewModel(
  quistion: 'What could’ve been better?',
  buttonText: 'Submit',
  rating: 1,
  ratingMap: {
    'Location awareness': false,
    'Rider behavior': false,
    'Rider hygiene': false,
    'Delivery time': false,
    'Excessive calling': false,
    'Delivery instruction ignored': false,
    'Spilled or damged item': false
  },
);

RatingViewModel rating2View = RatingViewModel(
  quistion: 'What could be improved?',
  buttonText: 'Submit',
  rating: 3,
  ratingMap: {
    'Location awareness': false,
    'Rider behavior': false,
    'Rider hygiene': false,
    'Delivery time': false,
    'Excessive calling': false,
    'Delivery instruction ignored': false
  },
);
RatingViewModel rating3View = RatingViewModel(
  quistion: 'What did you like?',
  buttonText: 'Submit',
  rating: 4,
  ratingMap: {
    'Rider behavior': false,
    'Rider hygiene': false,
    'Delivery time': false
  },
);
RatingViewModel rating4View = RatingViewModel(
  quistion: 'What could’ve been better?',
  buttonText: 'Next',
  rating: 1,
  ratingMap: {
    'Missing item': false,
    'Wrong item': false,
    'Items quality': false,
    'Items out of stock': false,
    'Freshness': false,
    'Overpriced': false
  },
);
RatingViewModel rating5View = RatingViewModel(
  quistion: 'What could be improved?',
  buttonText: 'Next',
  rating: 3,
  ratingMap: {
    'Missing item': false,
    'Wrong item': false,
    'Items quality': false,
    'Items out of stock': false,
    'Freshness': false,
    'Overpriced': false
  },
);
RatingViewModel rating6View = RatingViewModel(
  quistion: 'What could’ve been better?',
  buttonText: 'Next',
  rating: 4,
  ratingMap: {
    'Items quality': false,
    'Freshness': false,
    'Good price': false,
    'Good discounts': false,
    'Wide variety': false
  },
);
