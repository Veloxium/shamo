import "package:get/get.dart";
import "package:latihan_mobile/features/auth/screen/signin.dart";
import "package:latihan_mobile/features/auth/screen/signup.dart";

class SplashScreenController extends GetxController {
  static SplashScreenController get to => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 400));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 1000));
    Get.to(() => const SignInScreen(),
        transition: Transition.fade,
        duration: const Duration(milliseconds: 400));
  }
}
