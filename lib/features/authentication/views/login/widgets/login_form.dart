import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store/utils/constants/sizes.dart';
import 'package:store/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.spaceBetweenSections,
        ),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: AppTextStrings.email,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBetweenInputFields),
            // Password
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: AppTextStrings.password,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBetweenInputFields / 2),

            // Remember me and Forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Remember me checkbox
                    Checkbox(value: false, onChanged: (value) {}),
                    const Text(AppTextStrings.rememberMe),
                  ],
                ),

                // Forgot password button
                TextButton(
                  onPressed: () {},
                  child: Text(AppTextStrings.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBetweenSections),

            // Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(AppTextStrings.signIn),
              ),
            ),

            const SizedBox(height: AppSizes.spaceBetweenItems),

            // Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(AppTextStrings.createAccount),
              ),
            ),

            const SizedBox(height: AppSizes.spaceBetweenSections),
          ],
        ),
      ),
    );
  }
}
