import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:store/features/authentication/views/onboarding/widgets/onboarding_circular_button.dart';
import 'package:store/features/authentication/views/onboarding/widgets/onboarding_page.dart';
import 'package:store/features/authentication/views/onboarding/widgets/onboarding_skip_button.dart';
import 'package:store/features/authentication/views/onboarding/widgets/onboarding_smooth_page_indicator.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: AppImages.onboardingImage1,
                title: AppTextStrings.onboardingTitle1,
                subTitle: AppTextStrings.onboardingSubTitle1,
              ),
              OnBoardingPage(
                image: AppImages.onboardingImage2,
                title: AppTextStrings.onboardingTitle2,
                subTitle: AppTextStrings.onboardingSubTitle2,
              ),
              OnBoardingPage(
                image: AppImages.onboardingImage3,
                title: AppTextStrings.onboardingTitle3,
                subTitle: AppTextStrings.onboardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          OnBoardingSkipButton(),

          // Dot Navigation SmoothPageIndicator
          OnBoardingSmoothPageIndicator(),

          // Circular button (next)
          OnBoardingCircularButton(),
        ],
      ),
    );
  }
}
