import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/styles/app_styles.dart';

class AccountItems extends StatelessWidget {
  const AccountItems({
    super.key,
    required this.text,
    required this.image,
  });
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          image,
        ),
        SizedBox(width: 16),
        Text(
          text,
          style: AppStyles.medium14,
        ),
      ],
    );
  }
}
