import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_mobile/features/auth/screen/signin.dart';
import 'package:latihan_mobile/utils/constans.dart';

import '../../../components/button/cbutton.dart';
import '../../../components/textformfield/ctextformfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  "Sign Up",
                  style: CTextStyles.title,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "Register and Happy Shopping",
                  style: CTextStyles.sublabel,
                ),
                const SizedBox(
                  height: 70,
                ),
                const CTextFormField(
                  label: "Full Name",
                  hint: "Your Full Name",
                  iconAsset: "assets/icon_name.png",
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const CTextFormField(
                  label: "Username",
                  hint: "Your Username",
                  iconAsset: "assets/icon_username.png",
                ),
                const SizedBox(
                  height: 20.0,
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
                const CButton(label: "Sign Up"),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account? ",
                            style: CTextStyles.sublabel,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => const SignInScreen(),
                                  transition: Transition.downToUp,
                                  duration: const Duration(milliseconds: 400));
                            },
                            child: Text(
                              "Sign In",
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