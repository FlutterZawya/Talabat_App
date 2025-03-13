import 'package:flutter/material.dart';
import 'widgets/custom_filtering_items.dart';
import 'widgets/custom_food_home_view_appbar.dart';

class FoodHomeView extends StatelessWidget {
  const FoodHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              SizedBox(height: 16),
              CustomFoodHomeViewAppBar(),
              SizedBox(height: 16),
              CustomFilteringItems(),
            ],
          ),
        ),
      ),
    );
  }
}
