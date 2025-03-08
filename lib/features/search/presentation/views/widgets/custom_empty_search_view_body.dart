import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../data/enums/empty_search_type.dart';
import '../../../data/models/empty_search_view_model.dart';
import '../../manager/functions/get_empty_search_data.dart';

class CustomEmptySearchViewBody extends StatelessWidget {
  const CustomEmptySearchViewBody({
    super.key,
    required this.type,
    this.onPressedOnSearch,
  });
  final EmptySearchType type;
  final void Function()? onPressedOnSearch;
  @override
  Widget build(BuildContext context) {
    EmptySearchViewModel viewModel = getEmptySearchData(type);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
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
            onPressed: onPressedOnSearch,
            backgroundColor: AppColors.white,
            textColor: AppColors.main,
            borderRadius: 16,
            height: 45,
            width: (viewModel.buttonText.length + 10).toDouble(),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
