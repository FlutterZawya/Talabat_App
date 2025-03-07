import 'package:flutter/material.dart';

import 'featured_restaurants_list_view.dart';
import 'search_sections_title.dart';

class FeaturedRestaurantsSection extends StatelessWidget {
  const FeaturedRestaurantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 5),
          const SearchSectionsTitle(title: 'Featured Restaurants'),
          SizedBox(height: 8),
          FeaturedRestaurantsListView(),
        ],
      ),
    );
  }
}
