import 'package:flutter/material.dart';

import '../../../../core/utils/styles/app_colors.dart';
import 'widgets/add_notes_view_body.dart';

class AddNotesView extends StatelessWidget {
  const AddNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: AddNotesViewBody(),
    );
  }
}
