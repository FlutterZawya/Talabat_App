import 'package:flutter/material.dart';
import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import '../../../data/models/category_model.dart';

class CustomShortCutCard extends StatelessWidget {
  final CategoryModel categoryModel;
  const CustomShortCutCard({
    super.key,
    required this.categoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: Column(
        children: [
          InkWell(
            onTap: categoryModel.onTap,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.inactiveButton,
              ),
              child: Image.asset(categoryModel.categoryImg),
            ),
          ),
          SizedBox(height: 8),
          Text(
            categoryModel.categoryName,
            style: AppStyles.medium14,
          ),
        ],
      ),
    );
  }
}
