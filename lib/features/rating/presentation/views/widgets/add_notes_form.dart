import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_colors.dart';
import '../../../../../core/utils/styles/app_styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';

class AddNotesForm extends StatelessWidget {
  const AddNotesForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          maxLines: 4,
          autofocus: false,
          maxLength: 100,
          style: AppStyles.regular16,
          decoration: InputDecoration(
            hintText: 'Add a note (optional)',
            hintStyle: AppStyles.regular16,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.main),
            ),
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {},
        ),
        SizedBox(height: 24),
        CustomButton(
          text: 'Next',
          onPressed: () {
            //TODO : Navigete to the next view
          },
        ),
        SizedBox(height: 24),
      ],
    );
  }
}
