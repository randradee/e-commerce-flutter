import 'package:flutter/material.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/device/device_utils.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtils.getStatusBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(onPressed: () {}, child: const Text('Skip')),
    );
  }
}
