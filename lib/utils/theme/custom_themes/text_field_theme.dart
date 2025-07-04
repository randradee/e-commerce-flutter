import 'package:flutter/material.dart';

class TextFieldTheme {
  TextFieldTheme._();

  static InputDecorationTheme lightTextFieldTheme() {
    return InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: Colors.grey,
      suffixIconColor: Colors.grey,
      labelStyle: const TextStyle(fontSize: 14, color: Colors.black),
      hintStyle: const TextStyle(fontSize: 14, color: Colors.black),
      errorStyle: const TextStyle(fontStyle: FontStyle.normal),
      floatingLabelStyle: TextStyle(color: Colors.black.withValues(alpha: 0.8)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: Colors.grey),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: Colors.black12),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 2, color: Colors.orange),
      ),
    );
  }

  static InputDecorationTheme darkTextFieldTheme() {
    return InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: Colors.grey,
      suffixIconColor: Colors.grey,
      labelStyle: const TextStyle(fontSize: 14, color: Colors.white),
      hintStyle: const TextStyle(fontSize: 14, color: Colors.white),
      errorStyle: const TextStyle(fontStyle: FontStyle.normal),
      floatingLabelStyle: TextStyle(color: Colors.white.withValues(alpha: 0.8)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: Colors.grey),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: Colors.black12),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 1, color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(width: 2, color: Colors.orange),
      ),
    );
  }
}
