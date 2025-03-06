import 'package:flutter/material.dart';

import '../../data/content/empty_search_view_data.dart';
import 'widgets/custom_empty_search_view_body.dart';

class GroceriesView extends StatelessWidget {
  const GroceriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomEmptySearchViewBody(
      viewModel: emptySearchViewData[1],
    );
  }
}
