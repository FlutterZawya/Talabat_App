import 'package:flutter/material.dart';

import 'popular_search_button.dart';

class PopularSearchGridView extends StatelessWidget {
  const PopularSearchGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: popularSearches.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 8,
        crossAxisSpacing: 4,
        childAspectRatio: 2.6,
      ),
      itemBuilder: (context, index) {
        return PopularSearchButton(text: popularSearches[index]);
      },
    );
  }
}

List<String> popularSearches = [
  'chicken',
  'cake',
  'burger',
  'pizza',
  'pasta',
  'Salad',
  'mcdonalds',
];
