import 'package:flutter/material.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import '../../../data/models/meal_model.dart';

class CustomMealCard extends StatelessWidget {
  final MealModel model;
  const CustomMealCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(model.image),
        Text(model.name, style: AppStyles.bold14),
        Text(model.description, style: AppStyles.medium10),
        
        Row(
          children: [
            Icon(Icons.star, color: Colors.amber),
            Text(model.rate.toString()),
            SizedBox(width: 10),
            Text('(+100)', style: AppStyles.medium12),
          ],
        )
      ],
    );
  }
}