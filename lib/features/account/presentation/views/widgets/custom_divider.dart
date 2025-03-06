import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 24,
      color: AppColors.grey200,
    );
  }
}