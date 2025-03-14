import 'package:flutter/material.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import '../../../../../core/utils/widgets/custom_restaurant_card.dart';

class AllRestaurantListViewBuilder extends StatelessWidget {
  const AllRestaurantListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return index == 0
            ? Text(' All Restaurants', style: AppStyles.bold18)
            : CustomRestaurantCard();
      },
    );
  }
}