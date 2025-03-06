import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../data/models/empty_search_view_model.dart';

class CustomEmptySearchViewBody extends StatelessWidget {
  const CustomEmptySearchViewBody({
    super.key,
    required this.viewModel,
  });
  final EmptySearchViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(viewModel.image),
        SizedBox(height: 20),
        Text(
          viewModel.title,
          style: AppStyles.bold20,
        ),
        SizedBox(height: 10),
        Text(
          viewModel.subtitle,
          style: AppStyles.medium16,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 30),
        CustomButton(
          text: viewModel.buttonText,
          onPressed: viewModel.onPressed,
          backgroundColor: AppColors.white,
          textColor: AppColors.main,
          borderRadius: 16,
          height: 45,
          width: (viewModel.buttonText.length + 10).toDouble(),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
