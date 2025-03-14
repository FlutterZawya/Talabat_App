import 'package:flutter/material.dart';
import 'widgets/food_home_view_body.dart';

class FoodHomeView extends StatelessWidget {
  const FoodHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FoodHomeViewBody(),
    );
  }
}
