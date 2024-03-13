import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_mobile/features/favorite/screen/favoriteitems.dart';
import 'package:latihan_mobile/features/messages/screen/messageschat.dart';
import 'package:latihan_mobile/utils/constans.dart';

// ignore: must_be_immutable
class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({super.key});

  var value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Favorite Shoes',
            style: GoogleFonts.poppins(
              color: CColors.white,
              fontWeight: FontWeight.w400,
              fontSize: 18.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: CColors.bgColor,
          toolbarHeight: 87.0,
        ),
        backgroundColor: CColors.bgColor3,
        body: Column(
          children: [
            value == true
                ? Center(
                    heightFactor: 2.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/image_wishlist.png",
                          height: 80.5,
                          width: 80,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "You don't have dream shoes?",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: CColors.primaryText,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "Let's find your favorite shoes",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: CColors.secondaryText,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CColors.primary,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24.0,
                              vertical: 10.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Explore Store",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: CColors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : FavoriteItems(),
          ],
        ));
    ;
  }
}