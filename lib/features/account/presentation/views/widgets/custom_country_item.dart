import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_styles.dart';

class CustomCountryItem extends StatelessWidget {
  const CustomCountryItem({
    super.key,
    required this.country,
    this.index,
  });

  final Country country;
  final int? index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        country.flagEmoji,
        style: TextStyle(fontSize: 24),
      ),
      title: Text(
        country.name,
        style: AppStyles.medium14.copyWith(color: AppColors.black),
      ),
      trailing: index == 6
          ? CircleAvatar(
              radius: 15,
              backgroundColor: AppColors.main,
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 12,
              ),
            )
          : null,
    );
  }
}
