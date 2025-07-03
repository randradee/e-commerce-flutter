import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:store/utils/constants/colors.dart';
import 'package:store/utils/constants/text_strings.dart';
import 'package:store/utils/device/device_utils.dart';

class FormDivider extends StatelessWidget {
  final String dividerText;

  FormDivider({super.key, String? dividerText})
    : dividerText = (dividerText != null && dividerText.isNotEmpty)
          ? dividerText
          : AppTextStrings.orSignInWith.capitalize!;

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = AppDeviceUtils.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: isDarkMode ? AppColors.darkGrey : AppColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: isDarkMode ? AppColors.darkGrey : AppColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
