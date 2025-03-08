import 'package:flutter/material.dart';
import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_images.dart';
import '../../../../../core/utils/styles/app_styles.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 100,
      color: AppColors.inactiveButton,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text("Delivering to ...", style: AppStyles.medium16),
                Icon(Icons.keyboard_arrow_down_outlined),
              ],
            ),
          ),
          Image.asset(AppImages.imagesTalabat),
        ],
      ),
    );
  }
}
