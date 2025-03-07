// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_images.dart';
import '../../../../../core/utils/styles/app_styles.dart';

class PopularSearchButton extends StatelessWidget {
  const PopularSearchButton({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.white,
            border: Border.all(color: AppColors.grey400),
          ),
          child: Row(
            children: [
              SvgPicture.asset(AppImages.imagesPopularSearchIcon),
              SizedBox(width: 8),
              Text(text, style: AppStyles.bold12),
            ],
          ),
        ),
      ),
    );
  }
}
