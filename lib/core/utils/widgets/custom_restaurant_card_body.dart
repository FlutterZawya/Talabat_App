import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../styles/app_styles.dart';

class CustomRestaurantCardBody extends StatelessWidget {
  const CustomRestaurantCardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Text(
              'Noon & Kabab Restaurant, Kebab, Grill',
              style: AppStyles.bold16,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          Text(
            'Iranian, Arabic, Kebab, Grills',
            style: AppStyles.bold10,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 16,
              ),
              Text(
                ' 4.5',
                style: AppStyles.bold14,
              ),
              Text('  (100+)', style: AppStyles.bold10),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.watch_later_outlined,
                color: AppColors.grey500,
                size: 16,
              ),
              SizedBox(width: 3),
              Text(
                'Within 35 mins',
                style: AppStyles.bold14,
              ),
              SizedBox(width: 5),
              CircleAvatar(
                radius: 3,
                backgroundColor: AppColors.grey300,
              ),
              SizedBox(width: 5),
              Icon(
                Icons.motorcycle_outlined,
                color: AppColors.grey500,
                size: 16,
              ),
              SizedBox(width: 3),
              Text(
                'AED 5.50',
                style: AppStyles.bold14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
