import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../core/utils/styles/app_colors.dart';
import '../../../../core/utils/styles/app_styles.dart';
import 'flowers_view.dart';
import 'food_view.dart';
import 'groceries_view.dart';
import 'health_view.dart';
import 'more_shops_view.dart';
import 'widgets/custom_search_text_field.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize the TabController with the number of tabs
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // Dispose the TabController when the widget is removed
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomSearchTextField(
          hintText: 'Search food, groceries and more',
          onChanged: (value) {},
        ),
        // toolbarHeight: 60,
        backgroundColor: AppColors.white,
        flexibleSpace: Container(color: AppColors.white),

        bottom: TabBar(
          controller: _tabController,
          indicatorColor: AppColors.main,
          labelStyle: AppStyles.bold14.copyWith(color: AppColors.main),
          isScrollable: true,
          indicatorPadding: EdgeInsets.zero,
          onTap: (value) {
            log(value.toString()); // value is the index of the tab
          },
          labelPadding: EdgeInsets.only(right: 20, left: 0),
          padding: EdgeInsets.zero,
          labelColor: AppColors.main,
          dividerColor: AppColors.grey400,
          enableFeedback: false, //
          tabAlignment: TabAlignment.startOffset,

          tabs: const [
            Tab(text: 'Food'),
            Tab(text: 'Groceries'),
            Tab(text: 'Health & wellness'),
            Tab(text: 'Flowers'),
            Tab(text: 'More shops'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          FoodView(), //FoodView(),
          GroceriesView(), //GroceriesView(),
          HealthView(), //HealthView(),
          FlowersView(), //FlowersView(),
          MoreShopsView(), //MoreShopsView(),
        ],
      ),
    );
  }
}
