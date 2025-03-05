import 'package:flutter/material.dart';

import '../../../../core/utils/styles/app_colors.dart';
import 'widgets/custom_search_text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomSearchTextField(
          hintText: 'Search food, groceries and more',
          onChanged: (value) {},
        ),
        toolbarHeight: 60,
        backgroundColor: AppColors.white,
        flexibleSpace: Container(color: AppColors.white),
      ),
    );
  }
}
