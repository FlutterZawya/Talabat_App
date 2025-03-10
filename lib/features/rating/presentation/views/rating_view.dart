import 'package:flutter/material.dart';

import '../../../../core/utils/styles/app_colors.dart';

class RatingView extends StatelessWidget {
  const RatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            size: 26,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
