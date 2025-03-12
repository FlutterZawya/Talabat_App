import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_images.dart';
import '../../../../../core/utils/styles/app_styles.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        // height: 200,
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            IconButton(
              onPressed: () => GoRouter.of(context).pop(),
              icon: Icon(Icons.close),
            ),
            Center(child: Image.asset(AppImages.imagesTalabatMart)),
            SizedBox(
              width: double.infinity,
              child: Text(
                'How was your order from talabat mart?',
                style: AppStyles.bold24,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
