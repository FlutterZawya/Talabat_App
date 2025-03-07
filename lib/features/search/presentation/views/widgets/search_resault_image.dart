import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_images.dart';

class SearchResaultImage extends StatelessWidget {
  const SearchResaultImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white,
        border: Border.all(color: AppColors.grey, width: 1),
        image: DecorationImage(
          image: AssetImage(AppImages.imagesTestSearchImage1),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
