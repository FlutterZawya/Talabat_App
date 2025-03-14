import 'package:flutter/material.dart';
import 'package:talabat_app/core/utils/styles/app_styles.dart';
import 'widgets/all_restaurant_list_view_builder.dart';
import 'widgets/custom_filtering_items.dart';
import 'widgets/custom_food_home_view_appbar.dart';
import 'widgets/meal_list_view_builder.dart';
import 'widgets/offers_list_view_builder.dart';

class FoodHomeView extends StatelessWidget {
  const FoodHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 10),
              CustomFoodHomeViewAppBar(),
              CustomFilteringItems(),
              OffersListViewBuilder(),
              SizedBox(height: 6),
              Text(' Great value deals', style: AppStyles.bold18),
              MealListViewBuilder(),
              AllRestaurantListViewBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
