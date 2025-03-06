import 'package:flutter/material.dart';

import '../../data/enums/empty_search_type.dart';
import 'widgets/custom_empty_search_view_body.dart';

class HealthView extends StatelessWidget {
  const HealthView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomEmptySearchViewBody(
      type: EmptySearchType.health,
      onPressedOnSearch: () {},
    );
  }
}
