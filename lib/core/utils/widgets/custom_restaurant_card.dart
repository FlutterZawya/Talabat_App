import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import 'custom_restaurant_card_body.dart';
import 'custom_restaurant_image.dart';

class CustomRestaurantCard extends StatelessWidget {
  const CustomRestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white,
        border: Border.all(color: AppColors.grey100),
      ),
      child: Row(
        children: [
          CustomRestaurantImage(),
          SizedBox(width: 16),
          CustomRestaurantCardBody(),
        ],
      ),
    );
  }
}
