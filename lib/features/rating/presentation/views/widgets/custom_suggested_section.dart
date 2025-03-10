import 'package:flutter/material.dart';

import '../../../data/content/rating_views_data.dart';
import '../../../data/models/rating_view_model.dart';
import 'custom_suggested_item.dart';

class CustomSuggestedSectoin extends StatelessWidget {
  const CustomSuggestedSectoin({
    super.key,
    required this.ratingViewIndex,
  });

  final int ratingViewIndex;

  @override
  Widget build(BuildContext context) {
    RatingViewModel ratingViewModel = ratingViewsData[ratingViewIndex];
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.center,
      children: List.generate(
        ratingViewModel.ratingMap.length,
        (index) => CustomSuggestedItem(
          text: ratingViewModel.ratingMap.keys.toList()[index],
          ratingViewIndex: ratingViewIndex,
        ),
      ),
    );
  }
}
