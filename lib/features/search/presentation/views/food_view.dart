import 'package:flutter/material.dart';

import 'widgets/featured_restaurants_section.dart';
import 'widgets/popular_search_section.dart';

class FoodView extends StatelessWidget {
  const FoodView({super.key});

  @override
  Widget build(BuildContext context) {
    // return CustomEmptySearchViewBody(
    //   type: EmptySearchType.food,
    //   onPressedOnSearch: () {},
    // );
    //////////////
    return Center(
      child: Column(
        children: [
          PopularSearchSection(),
          FeaturedRestaurantsSection(),
        ],
      ),
    );
  }
}
