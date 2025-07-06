import 'package:flutter/material.dart';
import 'package:store/common/widgets/login_signup/spacing_styles.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/constants/text_strings.dart';
import 'package:store/utils/device/device_utils.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithAppBar * 2,
          child: Column(
            children: [
              // Image
              Image(
                width: AppDeviceUtils.getScreenWidth(context) * 0.6,
                image: AssetImage(image),
              ),
              SizedBox(width: AppSizes.spaceBetweenSections),

              // Title and Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: AppSizes.spaceBetweenItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: AppSizes.spaceBetweenSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(AppTextStrings.appContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
