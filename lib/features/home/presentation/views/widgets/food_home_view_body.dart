import 'package:flutter/material.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import 'all_restaurant_list_view_builder.dart';
import 'custom_filtering_items.dart';
import 'custom_food_home_view_appbar.dart';
import 'meal_list_view_builder.dart';
import 'offers_list_view_builder.dart';

class FoodHomeViewBody extends StatelessWidget {
  const FoodHomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16),
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
    );
  }
}
