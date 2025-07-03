import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/features/authentication/views/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final int totalPages = 3;
  final RxInt currentPageIndex = 0.obs;
  final pageController = PageController();

  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentPageIndex.value < totalPages - 1) {
      currentPageIndex.value++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      Get.offAll(const LoginScreen());
    }
  }

  void skipToLogin() {
    currentPageIndex.value = 0;
    Get.offAll(const LoginScreen());
  }
}
