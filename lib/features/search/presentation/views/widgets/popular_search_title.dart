import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_styles.dart';

class PopularSearchTitle extends StatelessWidget {
  const PopularSearchTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text('Popular searches', style: AppStyles.bold18),
    );
  }
}
