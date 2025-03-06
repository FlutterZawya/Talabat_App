import 'package:flutter/material.dart';

import '../../data/content/empty_search_view_data.dart';
import 'widgets/custom_empty_search_view_body.dart';

class FlowersView extends StatelessWidget {
  const FlowersView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomEmptySearchViewBody(
      viewModel: emptySearchViewData[3],
    );
  }
}
