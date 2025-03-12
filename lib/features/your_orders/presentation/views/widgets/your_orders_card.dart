import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import '../../../../../core/utils/widgets/custom_restaurant_image.dart';
import '../../../../../core/utils/widgets/custom_text_button.dart';

class YourOrdersCard extends StatelessWidget {
  const YourOrdersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListTile(
            titleAlignment: ListTileTitleAlignment.top,
            contentPadding: EdgeInsets.zero,
            leading: CustomRestaurantImage(),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.grey,
              ),
            ),
            title: Text('talabat mart', style: AppStyles.bold20),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Delivered',
                    style:
                        AppStyles.regular14.copyWith(color: AppColors.green)),
                Text('24 September 2023 16:17', style: AppStyles.regular14),
                Text('daOrder ID: 1284566612ta', style: AppStyles.regular14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: CustomTextButton(
                        text: "↻ Re-Order",
                        onPressed: () {},
                      ),
                    ),
                    Flexible(
                      child: CustomTextButton(
                        text: "😁 Rate Order",
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Divider(color: AppColors.grey, thickness: 1),
      ],
    );
  }
}
