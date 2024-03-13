import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_mobile/components/textform/ctextform.dart';
import 'package:latihan_mobile/utils/constans.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: GoogleFonts.poppins(
            color: CColors.white,
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: CColors.bgColor,
        toolbarHeight: 87.0,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 30.0, right: 19.0),
            child: Icon(
              Icons.close,
              size: 20.0,
              color: CColors.white,
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 30.0, left: 19.0),
                  child: Icon(
                    Icons.check,
                    size: 20.0,
                    color: CColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: CColors.bgColor3,
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    "assets/image_profile.png",
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            const CBorderTextForm(label: "Name", initialValue: "Alex keinnzal"),
            const SizedBox(
            height: 10.0,
            ),
            const CBorderTextForm(label: "Username", initialValue: "@alexkeinn"),
            const SizedBox(
            height: 10.0,
            ),
            const CBorderTextForm(label: "Email Address", initialValue: "alex.kein@gmail.com"),
            const SizedBox(
            height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
