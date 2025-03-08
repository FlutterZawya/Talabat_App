import 'package:flutter/material.dart';
import '../../../../../core/utils/styles/app_images.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import 'custom_carousel_items.dart';
import '../../../data/models/category_model.dart';
import 'custom_category_list_view_builder.dart';
import 'custom_get_code_card.dart';
import 'custom_home_view_appbar.dart';
import 'custom_smooth_page_indicator.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomHomeViewAppBar(),
          CustomCarouselSlider(
            items: [Image.asset(AppImages.imagesSliderImg)],
            height: 200,
          ),
          CustomSmoothPageIndicator(),
          SizedBox(height: 16),
          // for page navigation
          CustomCategoryListViewBuilder(
            scrollDirection: Axis.horizontal,
            height: 170,
            list: categoryViews,
            widgetName: 'view',
          ),
          SizedBox(height: 16),
          // for product navigation
          CustomCategoryListViewBuilder(
            scrollDirection: Axis.horizontal,
            height: 170,
            list: categoryProducts,
            widgetName: 'view',
          ),
          SizedBox(height: 16),
          // for code
          CustomGetCodeCard(),
          SizedBox(height: 26),
          // shortcuts part
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text('Shortcuts', style: AppStyles.bold24),
          ),
          CustomCategoryListViewBuilder(
            scrollDirection: Axis.horizontal,
            height: 120,
            list: categoryShortCuts,
            widgetName: 'short',
          ),
          SizedBox(height: 26),
          // for nearby restaurants
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text('Popular restaurants nearby', style: AppStyles.bold24),
          ),
          SizedBox(height: 16),
          CustomCategoryListViewBuilder(
            scrollDirection: Axis.horizontal,
            height: 170,
            list: categoryRestaurants,
            widgetName: 'restaurant',
          ),
        ],
      ),
    );
  }
}
