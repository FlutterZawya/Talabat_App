import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/custom_restaurant_card.dart';

class FeaturedRestaurantsListView extends StatelessWidget {
  const FeaturedRestaurantsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4, // Replace with the actual number of featured restaurants
      itemBuilder: (context, index) {
        return CustomRestaurantCard();
      },
    );
  }
}
