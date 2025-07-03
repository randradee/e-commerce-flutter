import 'package:flutter/material.dart';
import 'package:store/common/spacing_styles.dart';
import 'package:store/features/authentication/views/login/widgets/login_form.dart';
import 'package:store/features/authentication/views/login/widgets/login_form_divider.dart';
import 'package:store/features/authentication/views/login/widgets/login_header.dart';
import 'package:store/features/authentication/views/login/widgets/login_social_buttons.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/device/device_utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppDeviceUtils.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithAppBar,
          child: Column(
            children: [
              // Logo, title, and subtitle
              LoginHeader(isDarkMode: isDarkMode),

              // Login form
              LoginForm(),

              // Divider
              LoginFormDivider(isDarkMode: isDarkMode),
              const SizedBox(height: AppSizes.spaceBetweenSections),

              // Social media buttons
              LoginSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
