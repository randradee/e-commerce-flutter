import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/device/device_utils.dart';

import '../../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingSmoothPageIndicator extends StatelessWidget {
  const OnBoardingSmoothPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = AppDeviceUtils.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: AppDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
        onDotClicked: controller.dotNavigationClick,
        controller: controller.pageController,
        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 6,
          activeDotColor: isDarkMode ? AppColors.light : AppColors.dark,
        ),
      ),
    );
  }
}
