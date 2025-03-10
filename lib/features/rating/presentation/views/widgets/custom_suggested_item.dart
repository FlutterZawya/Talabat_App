import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import '../../../data/content/rating_views_data.dart';

class CustomSuggestedItem extends StatefulWidget {
  const CustomSuggestedItem({
    super.key,
    required this.text,
    required this.ratingViewIndex,
  });
  final String text;
  final int ratingViewIndex;

  @override
  State<CustomSuggestedItem> createState() => _CustomSuggestedItemState();
}

class _CustomSuggestedItemState extends State<CustomSuggestedItem> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isActive) {
          isActive = false;
          ratingViewsData[widget.ratingViewIndex].ratingMap[widget.text] =
              isActive;
          setState(() {});
        } else {
          isActive = true;
          ratingViewsData[widget.ratingViewIndex].ratingMap[widget.text] =
              isActive;
          setState(() {});
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isActive ? AppColors.main : AppColors.white,
          border: Border.all(
            color: isActive ? AppColors.main : AppColors.grey400,
          ),
        ),
        child: Flexible(
          child: Text(
            widget.text,
            style: AppStyles.bold14.copyWith(
              color: isActive ? AppColors.white : AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
