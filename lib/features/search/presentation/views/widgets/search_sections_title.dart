import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/app_styles.dart';

class SearchSectionsTitle extends StatelessWidget {
  const SearchSectionsTitle({
    super.key,
    required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(title, style: AppStyles.bold18),
    );
  }
}
