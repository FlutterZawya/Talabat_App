import 'dart:developer';

import 'package:flutter/material.dart';

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
              if (index == ratingViewsData.length - 1) {
                //TODO : Navigate to add_a_notes_view
                log('Navigate to add_a_notes_view');
              }
              //TODO : when we navigate to add_a_notes_view we delete the % from the next line
              index = (index + 1) % ratingViewsData.length;
              setState(() {});
              log(index.toString());
            },
          ),
        ),
        SizedBox(height: 44),
      ],
    ); //0 ... 5
  }
}
