import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/device/device_utils.dart';

class OnBoardingCircularButton extends StatelessWidget {
  const OnBoardingCircularButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = AppDeviceUtils.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
      right: AppSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: controller.nextPage,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: isDarkMode ? AppColors.primary : Colors.black,
        ),
        child: Icon(Iconsax.arrow_right_3, color: Colors.white),
      ),
    );
  }
}
