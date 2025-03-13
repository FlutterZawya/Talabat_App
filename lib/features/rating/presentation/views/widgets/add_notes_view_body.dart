import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_styles.dart';
import 'add_notes_form.dart';

class AddNotesViewBody extends StatelessWidget {
  const AddNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              'Any more notes?',
              style: AppStyles.bold20,
            ),
          ),
          SizedBox(height: 16),
          Expanded(child: AddNotesForm()),
        ],
      ),
    );
  }
}
