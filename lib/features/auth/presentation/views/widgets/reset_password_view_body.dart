import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_styles.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'You can reset your password here.',
            style: AppStyles.bold20,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
