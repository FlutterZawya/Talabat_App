import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:talabat_app/core/enum/auth_option_type.dart';
import 'package:talabat_app/core/models/auth_option_data.dart';
import 'package:talabat_app/core/utils/functions/auth_option_type_method.dart';
import 'package:talabat_app/core/utils/styles/app_colors.dart';
import 'package:talabat_app/core/utils/styles/app_styles.dart';

class CustomAuthOptionButton extends StatelessWidget {
  final Function onpressed;
  final AuthOptionType type;
  const CustomAuthOptionButton({
    super.key,
    required this.onpressed,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    AuthOptionData model = authOptionTypeMethod(type);
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: AppColors.black),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            SvgPicture.asset(model.image, height: 30),
            SizedBox(width: 60),
            Text(model.text, style: AppStyles.medium18),
          ],
        ),
      ),
    );
  }
}
