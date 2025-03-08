import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:talabat_app/features/home/presentation/views/widgets/custom_restaurant_card.dart';
import 'custom_shortcut_card.dart';
import '../../../data/models/category_model.dart';
import 'custom_category_view_card.dart';

class CustomCategoryListViewBuilder extends StatelessWidget {
  final Axis scrollDirection;
  final List<CategoryModel> list;
  final double height;
  final String widgetName;
  const CustomCategoryListViewBuilder({
    super.key,
    required this.scrollDirection,
    required this.list,
    required this.height,
    required this.widgetName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: scrollDirection,
        itemCount: list.length,
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (BuildContext context, int index) {
          return widgetName == 'view'
              ? CustomCategoryViewCard(
                  categoryModel: list[index],
                )
              : widgetName == 'short'
                  ? CustomShortCutCard(
                      categoryModel: list[index],
                    )
                  : CustomRestaurantCard(
                      categoryModel: list[index],
                    );
        },
      ),
    );
  }
}
