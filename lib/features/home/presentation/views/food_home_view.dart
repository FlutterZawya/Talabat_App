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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 32),
              CustomFoodHomeViewAppBar(),
              SizedBox(height: 16),
              CustomFilteringItems(),
              SizedBox(height: 16),
              OffersListViewBuilder(),
              SizedBox(height: 26),
              Text(' Great value deals', style: AppStyles.bold18),
              SizedBox(height: 16),
              MealListViewBuilder(),
              AllRestaurantListViewBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
