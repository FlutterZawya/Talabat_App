import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_images.dart';

class CustomRatingViewImage extends StatelessWidget {
  const CustomRatingViewImage({
    super.key,
    required this.ratingViewIndex,
  });

  final int ratingViewIndex;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ratingViewIndex <= 3
          ? AppImages.imagesDelivery
          : AppImages.imagesTalabatMart,
      fit: BoxFit.fill,
    );
  }
}
