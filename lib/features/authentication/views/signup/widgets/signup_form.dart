import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/constants/text_strings.dart';
import 'package:store/utils/device/device_utils.dart';

class SignUpFrom extends StatelessWidget {
  const SignUpFrom({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = AppDeviceUtils.isDarkMode(context);

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              // First Name
              Flexible(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: AppTextStrings.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBetweenInputFields),

              // Last Name
              Flexible(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: AppTextStrings.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBetweenInputFields),

          // Username
          TextFormField(
            decoration: InputDecoration(
              labelText: AppTextStrings.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBetweenInputFields),

          // Email
          TextFormField(
            decoration: InputDecoration(
              labelText: AppTextStrings.username,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBetweenInputFields),

          // Phone Number
          TextFormField(
            decoration: InputDecoration(
              labelText: AppTextStrings.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBetweenInputFields),

          // Password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: AppTextStrings.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBetweenSections),

          // Terms and Conditions checkbox
          Row(
            children: [
              SizedBox(
                width: AppSizes.defaultSpace,
                height: AppSizes.defaultSpace,
                child: Checkbox(value: false, onChanged: (value) {}),
              ),
              const SizedBox(width: AppSizes.spaceBetweenItems),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${AppTextStrings.iAgreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: AppTextStrings.privacyPolicy,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: isDarkMode ? AppColors.light : AppColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: isDarkMode
                            ? AppColors.light
                            : AppColors.primary,
                      ),
                    ),
                    TextSpan(
                      text: ' ${AppTextStrings.and} ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: AppTextStrings.termsOfUse,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: isDarkMode ? AppColors.light : AppColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: isDarkMode
                            ? AppColors.light
                            : AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBetweenSections),

          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(AppTextStrings.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
