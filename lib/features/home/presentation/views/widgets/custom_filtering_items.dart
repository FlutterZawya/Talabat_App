import 'package:flutter/material.dart';
import 'custom_filtering_button.dart';

class CustomFilteringItems extends StatelessWidget {
  const CustomFilteringItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomFilteringButton(
            title: 'Sort by',
            icon: Icon(Icons.swap_vert_outlined),
          ),
          SizedBox(width: 2),
          CustomFilteringButton(
            title: 'Cuisines',
            icon: Icon(
              Icons.local_cafe_outlined,
              size: 20,
            ),
          ),
          SizedBox(width: 2),
          CustomFilteringButton(
            title: 'Rating 4.0+',
            icon: Icon(Icons.swap_vert_outlined),
          ),
        ],
      ),
    );
  }
}
