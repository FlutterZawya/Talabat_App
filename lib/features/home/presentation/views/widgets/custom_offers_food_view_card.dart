import 'package:flutter/material.dart';
import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import '../../../data/models/food_view_model.dart';

class CustomOffersFoodViewCard extends StatelessWidget {
  final FoodViewModel model;
  const CustomOffersFoodViewCard({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 110,
      decoration: BoxDecoration(
          color: AppColors.lightBlue, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          SizedBox(height: 16),
          Expanded(flex: 3, child: Image.asset(model.image)),
          SizedBox(height: 6),
          Expanded(flex: 2, child: Text(model.name, style: AppStyles.medium16)),
        ],
      ),
    );
  }
}
