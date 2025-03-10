
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/styles/app_images.dart';
import '../../../data/content/rating_views_data.dart';
import '../../../data/models/rating_view_model.dart';

class CustomRatingStars extends StatefulWidget {
  const CustomRatingStars({
    super.key,
    required this.ratingViewIndex,
  });
  final int ratingViewIndex;

  @override
  State<CustomRatingStars> createState() => _CustomRatingStarsState();
}

class _CustomRatingStarsState extends State<CustomRatingStars> {
  @override
  Widget build(BuildContext context) {
    RatingViewModel ratingViewModel = ratingViewsData[widget.ratingViewIndex];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: List.generate(
            ratingViewModel.rating,
            (index) => InkWell(
              onTap: () {
                ratingViewsData[widget.ratingViewIndex].rating = index + 1;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(AppImages.imagesActiveStare),
              ),
            ),
          ),
        ),
        Row(
          children: List.generate(
            5 - ratingViewModel.rating,
            (index) => GestureDetector(
              onTap: () {
                ratingViewsData[widget.ratingViewIndex].rating += index + 1;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(AppImages.imagesInactiveStare),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
