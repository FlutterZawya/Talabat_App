import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../core/utils/styles/app_colors.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SmoothPageIndicator(
        controller: PageController(),
        count: 6,
        effect: const ExpandingDotsEffect(
          dotHeight: 10,
          dotWidth: 10,
          expansionFactor: 1.1,
          activeDotColor: AppColors.main,
        ),
      ),
    );
  }
}
