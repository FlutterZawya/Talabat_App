import 'package:flutter/widgets.dart';
import 'package:talabat_app/core/utils/styles/app_colors.dart';
import 'package:talabat_app/core/utils/styles/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: AppStyles.bold14.copyWith(color: AppColors.main),
      ),
    );
  }
}
