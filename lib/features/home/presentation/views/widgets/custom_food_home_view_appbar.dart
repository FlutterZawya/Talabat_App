import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_styles.dart';

class CustomFoodHomeViewAppBar extends StatelessWidget {
  const CustomFoodHomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        SizedBox(width: 16),
        RichText(
          text: TextSpan(
            text: 'Delivering to\n',
            style: AppStyles.medium14,
            children: [
              // name of the user will be in this place
              TextSpan(
                text: 'Ziad ',
                style: AppStyles.bold14,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
