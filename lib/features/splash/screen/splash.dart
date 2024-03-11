import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_mobile/features/splash/controller/splash_controller.dart';
import 'package:latihan_mobile/utils/constans.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      backgroundColor: CColors.bgColor,
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 400),
              top: splashController.animate.value ? 0 : 40,
              left: 0,
              right: 0,
              bottom: 0,
              child: FadeTransition(
                opacity: splashController.animate.value
                    ? const AlwaysStoppedAnimation(1)
                    : const AlwaysStoppedAnimation(0),
                child: Center(
                  child: Image.asset(
                    "assets/image_splash.png",
                    width: 130,
                    height: 150,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
