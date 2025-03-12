import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import '../../../../../core/utils/widgets/custom_text_button.dart';

class CustomSimpleDialog extends StatelessWidget {
  const CustomSimpleDialog({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: IntrinsicHeight(
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.8,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSecondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'This order has already been rated.',
                style: AppStyles.bold18,
                textAlign: TextAlign.center,
              ),
              Divider(
                color: AppColors.grey,
              ),
              CustomTextButton(
                text: 'OK',
                onPressed: () {
                  GoRouter.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
