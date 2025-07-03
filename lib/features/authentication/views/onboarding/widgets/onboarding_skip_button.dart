import 'package:flutter/material.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/device/device_utils.dart';

import '../../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
      top: AppDeviceUtils.getStatusBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(
        onPressed: controller.skipToLogin,
        child: const Text('Skip'),
      ),
    );
  }
}
