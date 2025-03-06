import 'package:flutter/material.dart';

import '../../data/enums/empty_search_type.dart';
import 'widgets/custom_empty_search_view_body.dart';

class FoodView extends StatelessWidget {
  const FoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomEmptySearchViewBody(
      type: EmptySearchType.food,
      onPressedOnSearch: () {},
    );
  }
}
