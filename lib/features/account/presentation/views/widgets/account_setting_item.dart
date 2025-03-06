import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_styles.dart';

class AccountSettingItem extends StatelessWidget {
  const AccountSettingItem({
    super.key,
    required this.title,
    this.text,
    this.onTap,
  });
  final String title;
  final String? text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Text(
              title,
              style: AppStyles.medium12.copyWith(color: AppColors.black),
            ),
            Spacer(),
            Text(
              text ?? '',
              style: AppStyles.medium12,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: AppColors.main,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
