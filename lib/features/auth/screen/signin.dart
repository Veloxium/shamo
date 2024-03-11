import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_mobile/components/button/cbutton.dart';
import 'package:latihan_mobile/components/textformfield/ctextformfield.dart';
import 'package:latihan_mobile/features/auth/screen/signup.dart';
import 'package:latihan_mobile/features/home/screen/home.dart';
import 'package:latihan_mobile/features/layout/screen/layout.dart';
import 'package:latihan_mobile/utils/constans.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CColors.bgColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: CTextStyles.title,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "Sign In to Continue",
                  style: CTextStyles.sublabel,
                ),
                const SizedBox(
                  height: 70,
                ),
                const CTextFormField(
                  label: "Email Address",
                  hint: "Your Email Address",
                  iconAsset: "assets/icon_email.png",
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const CTextFormField(
                  label: "Password",
                  hint: "Your Password",
                  iconAsset: "assets/icon_password.png",
                ),
                const SizedBox(
                  height: 30.0,
                ),
                CButton(
                  label: "Sign In",
                  onPressed: () {
                    Get.to(() => const LayoutScreen(),
                        transition: Transition.fade,
                        duration: const Duration(milliseconds: 400));
                  },
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: CTextStyles.sublabel,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => const SignUpScreen(),
                                  transition: Transition.downToUp,
                                  duration: const Duration(milliseconds: 400));
                            },
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: CColors.primary),
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
