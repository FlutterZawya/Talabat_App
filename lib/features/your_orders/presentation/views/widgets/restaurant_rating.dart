
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/styles/app_images.dart';

class RestaurantRating extends StatefulWidget {
  const RestaurantRating({super.key, this.rate = 1});
  final int rate;

  @override
  State<RestaurantRating> createState() => _RestaurantRatingState();
}

class _RestaurantRatingState extends State<RestaurantRating> {
  late int newRate;
  @override
  void initState() {
    super.initState();
    newRate = widget.rate;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: List.generate(
            newRate,
            (index) => InkWell(
              onTap: () {
                newRate = index + 1;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(AppImages.imagesActiveStare),
              ),
            ),
          ),
        ),
        Row(
          children: List.generate(
            5 - newRate,
            (index) => GestureDetector(
              onTap: () {
                newRate += index + 1;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(AppImages.imagesInactiveStare),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
