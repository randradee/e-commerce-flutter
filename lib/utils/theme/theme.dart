import 'package:flutter/material.dart';
import 'package:store/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:store/utils/theme/custom_themes/chip_theme.dart';
import 'package:store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:store/utils/theme/custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: CustomTextTheme.lightTextTheme(),
      inputDecorationTheme: TextFieldTheme.lightTextFieldTheme(),
      elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme(),
      outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme(),
      appBarTheme: CustomAppBarTheme.lightAppBarTheme(),
      bottomSheetTheme: BottomSheetTheme.lightBottomSheetTheme(),
      checkboxTheme: CustomCheckboxTheme.lightCheckboxTheme(),
      chipTheme: CustomChipTheme.lightChipTheme(),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: CustomTextTheme.darkTextTheme(),
      inputDecorationTheme: TextFieldTheme.darkTextFieldTheme(),
      elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme(),
      outlinedButtonTheme: CustomOutlinedButtonTheme.darkOutlinedButtonTheme(),
      appBarTheme: CustomAppBarTheme.darkAppBarTheme(),
      bottomSheetTheme: BottomSheetTheme.darkBottomSheetTheme(),
      checkboxTheme: CustomCheckboxTheme.darkCheckboxTheme(),
      chipTheme: CustomChipTheme.darkChipTheme(),
    );
  }
}
