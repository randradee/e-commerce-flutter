import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/common/form_divider.dart';
import 'package:store/common/social_buttons.dart';
import 'package:store/features/authentication/views/signup/widgets/signup_form.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                AppTextStrings.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AppSizes.spaceBetweenSections),

              // Form
              const SignUpFrom(),
              const SizedBox(height: AppSizes.spaceBetweenSections),

              // Divider
              FormDivider(dividerText: AppTextStrings.orSignUpWith.capitalize!),
              const SizedBox(height: AppSizes.spaceBetweenSections),

              // Social Media Buttons
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
