import 'package:get/get.dart';
import 'package:store/features/authentication/views/signup/signup.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  void onCreateAccount() {
    Get.to(() => SignUpScreen());
  }
}
