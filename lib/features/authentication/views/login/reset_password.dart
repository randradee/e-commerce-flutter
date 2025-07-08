import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/features/authentication/views/login/login.dart';
import 'package:store/utils/constants/image_strings.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/constants/text_strings.dart';
import 'package:store/utils/device/device_utils.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image
              Image(
                image: AssetImage(AppImages.resetPasswordSent),
                width: AppDeviceUtils.getScreenHeight(context) * 0.6,
              ),
              const SizedBox(height: AppSizes.spaceBetweenSections),

              // Title and subtitle
              Text(
                AppTextStrings.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AppSizes.spaceBetweenItems),
              Text(
                AppTextStrings.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: AppSizes.spaceBetweenSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => const LoginScreen()),
                  child: Text(AppTextStrings.done),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBetweenItems),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(AppTextStrings.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
