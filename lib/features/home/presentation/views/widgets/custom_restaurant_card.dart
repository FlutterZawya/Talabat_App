import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import '../../../data/models/category_model.dart';

class CustomRestaurantCard extends StatelessWidget {
  final CategoryModel categoryModel;
  const CustomRestaurantCard({
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
            child: Image.asset(categoryModel.categoryImg),
          ),
          SizedBox(height: 16),
          Text(
            categoryModel.categoryName,
            style: AppStyles.medium16,
          )
        ],
      ),
    );
  }
}
