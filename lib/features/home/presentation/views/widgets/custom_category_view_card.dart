import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import '../../../data/models/category_model.dart';

class CustomCategoryViewCard extends StatelessWidget {
  final CategoryModel categoryModel;
  const CustomCategoryViewCard({
    super.key,
    required this.categoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              GoRouter.of(context).push(categoryModel.location);
            },
            child: Container(
              height: 100,
              width: 120,
              decoration: BoxDecoration(
                color: AppColors.grey100,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(categoryModel.categoryImg),
            ),
          ),
          SizedBox(height: 6),
          categoryModel.offers != ""
              ? Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: AppColors.main,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    categoryModel.offers,
                    style: AppStyles.regular14.copyWith(color: AppColors.white),
                  ),
                )
              : SizedBox(height: 20),
          Text(
            categoryModel.categoryName,
            style: AppStyles.medium16,
          )
        ],
      ),
    );
  }
}
