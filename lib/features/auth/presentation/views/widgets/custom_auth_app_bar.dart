import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_styles.dart';

customAuthAppBar(
  BuildContext context, {
  String? title,
  bool showBackButton = true,
}) {
  return AppBar(
    title: Text(title ?? '', style: AppStyles.bold20),
    centerTitle: true,
    leading: showBackButton
        ? IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 26,
            ),
            onPressed: () => Navigator.pop(context),
          )
        : null,
  );
}
