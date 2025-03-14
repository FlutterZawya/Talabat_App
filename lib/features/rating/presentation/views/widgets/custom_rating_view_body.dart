import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_styles.dart';
import '../../../data/content/rating_views_data.dart';
import '../../../data/models/rating_view_model.dart';
import 'custom_rating_stars.dart';
import 'custom_rating_view_image.dart';
import 'custom_suggested_section.dart';

class CustomRatingViewBody extends StatelessWidget {
  const CustomRatingViewBody({super.key, required this.ratingViewIndex});
  final int ratingViewIndex;
  @override
  Widget build(BuildContext context) {
    RatingViewModel ratingViewModel = ratingViewsData[ratingViewIndex];
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 44),
            CustomRatingViewImage(ratingViewIndex: ratingViewIndex),
            SizedBox(height: 16),
            Text(ratingViewModel.quistion, style: AppStyles.bold20),
            SizedBox(height: 16),
            CustomRatingStars(ratingViewIndex: ratingViewIndex),
            SizedBox(height: 24),
            CustomSuggestedSectoin(ratingViewIndex: ratingViewIndex),
          ],
        ),
      ),
    );
  }
}
