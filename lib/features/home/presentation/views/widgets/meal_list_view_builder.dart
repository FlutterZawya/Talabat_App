import 'package:flutter/material.dart';
import 'package:talabat_app/features/home/data/models/meal_model.dart';
import 'custom_meal_card.dart';

class MealListViewBuilder extends StatelessWidget {
  const MealListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 5),
            child: CustomMealCard(
              model: meals[index],
            ),
          );
        },
      ),
    );
  }
}
