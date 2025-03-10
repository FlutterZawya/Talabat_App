import 'package:flutter/material.dart';

import 'custom_rating_view_body.dart';

class RatingViewBody extends StatelessWidget {
  const RatingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRatingViewBody(ratingViewIndex: 1);
  }
}
