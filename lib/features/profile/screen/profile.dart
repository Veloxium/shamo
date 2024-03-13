import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_mobile/features/profile/screen/editprofile.dart';
import 'package:latihan_mobile/utils/constans.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/image_profile.png",
                      height: 64,
                      width: 64,
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hallo, Alex', style: CTextStyles.title),
                        Text(
                          '@alexkeinn',
                          style: GoogleFonts.poppins(
                            color: CColors.secondaryText,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    color: CColors.alert,
                  ),
                  child: const Icon(
                    Icons.exit_to_app,
                    size: 20.0,
                    color: CColors.bgColor3,
                  ),
                ),
              ],
            ),
          ),
          centerTitle: true,
          backgroundColor: CColors.bgColor,
          toolbarHeight: 124.0,
        ),
        backgroundColor: CColors.bgColor3,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Account',
                style: GoogleFonts.poppins(
                  color: CColors.primaryText,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const EditProfile());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Edit Profile',
                        style: GoogleFonts.poppins(
                          color: CColors.secondaryText,
                          fontWeight: FontWeight.w400,
                          fontSize: 13.0,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: CColors.secondaryText,
                        size: 16.0,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Orders',
                      style: GoogleFonts.poppins(
                        color: CColors.secondaryText,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: CColors.secondaryText,
                      size: 16.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Help',
                      style: GoogleFonts.poppins(
                        color: CColors.secondaryText,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: CColors.secondaryText,
                      size: 16.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'General',
                style: GoogleFonts.poppins(
                  color: CColors.primaryText,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Privacy & Policy',
                      style: GoogleFonts.poppins(
                        color: CColors.secondaryText,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: CColors.secondaryText,
                      size: 16.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Term of Service',
                      style: GoogleFonts.poppins(
                        color: CColors.secondaryText,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: CColors.secondaryText,
                      size: 16.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rate App',
                      style: GoogleFonts.poppins(
                        color: CColors.secondaryText,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: CColors.secondaryText,
                      size: 16.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
    ;
  }
}
