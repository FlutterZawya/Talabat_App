import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_colors.dart';
import 'popular_search_grid_view.dart';
import 'search_sections_title.dart';

class PopularSearchSection extends StatelessWidget {
  const PopularSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 12),
              SearchSectionsTitle(title: 'Popular searches'),
              SizedBox(height: 12),
              PopularSearchGridView(),
              SizedBox(height: 12),
            ],
          ),
        ),
        Divider(thickness: 8, color: AppColors.grey300),
      ],
    );
  }
}
