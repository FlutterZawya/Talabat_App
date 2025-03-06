import 'package:flutter/material.dart';


import '../../../../../core/utils/styles/app_styles.dart';

class AccountItems extends StatelessWidget {
  const AccountItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.home),
        SizedBox(width: 8),
        Text(
          'Your orders',
          style: AppStyles.medium14,
        ),
      ],
    );
  }
}
