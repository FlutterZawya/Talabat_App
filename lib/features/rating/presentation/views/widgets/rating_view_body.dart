import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routes/app_routes.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_button.dart';
import '../../../data/content/rating_views_data.dart';
import 'custom_rating_view_body.dart';

class RatingViewBody extends StatefulWidget {
  const RatingViewBody({super.key});

  @override
  State<RatingViewBody> createState() => _RatingViewBodyState();
}

class _RatingViewBodyState extends State<RatingViewBody> {
  int index = 0; // 0 ... 5
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRatingViewBody(ratingViewIndex: index),
        Expanded(child: SizedBox()),
        CustomTextButton(text: 'Any more notes?'),
        Expanded(child: SizedBox()),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomButton(
            text: ratingViewsData[index].buttonText,
            onPressed: () {
              index++;
              if (index == ratingViewsData.length) {
                index = 0;
                GoRouter.of(context).pushReplacement(AppRoutes.addNotesView);
              }
              setState(() {});
            },
          ),
        ),
        SizedBox(height: 44),
      ],
    );
  }
}
