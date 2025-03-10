class RatingViewModel {
  final String quistion;
  final String buttonText;
  Map<String, bool> ratingMap;
  int rating;

  RatingViewModel({
    required this.quistion,
    required this.ratingMap,
    required this.rating,
    required this.buttonText,
  });
}
