import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/common/widgets/success_screen/success_screen.dart';
import 'package:store/features/authentication/views/login/login.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/constants/text_strings.dart';
import 'package:store/utils/device/device_utils.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Image
                Image(
                  width: AppDeviceUtils.getScreenWidth(context) * 0.6,
                  image: AssetImage(AppImages.verifyEmailImage),
                ),
                SizedBox(width: AppSizes.spaceBetweenSections),

                // Title and Subtitle
                Text(
                  AppTextStrings.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSizes.spaceBetweenItems),
                Text(
                  'dev.renatopandrade@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSizes.spaceBetweenItems),
                Text(
                  AppTextStrings.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSizes.spaceBetweenSections),

                // Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(
                      () => SuccessScreen(
                        image: AppImages.successImage,
                        title: AppTextStrings.yourAccountCreatedTitle,
                        subtitle: AppTextStrings.yourAccountCreatedSubTitle,
                        onPressed: () => Get.offAll(() => const LoginScreen()),
                      ),
                    ),
                    child: const Text(AppTextStrings.appContinue),
                  ),
                ),
                SizedBox(height: AppSizes.spaceBetweenItems),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(AppTextStrings.resendEmail),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
