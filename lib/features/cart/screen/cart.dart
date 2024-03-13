import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_mobile/features/cart/screen/cartitem.dart';
import 'package:latihan_mobile/features/messages/screen/messageschat.dart';
import 'package:latihan_mobile/utils/constans.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  var value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Cart',
            style: GoogleFonts.poppins(
              color: CColors.white,
              fontWeight: FontWeight.w400,
              fontSize: 18.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: CColors.bgColor,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 30.0, right: 19.0),
              child: Icon(
                Icons.arrow_back_ios,
                size: 18.0,
                color: CColors.white,
              ),
            ),
          ),
          toolbarHeight: 87.0,
        ),
        backgroundColor: CColors.bgColor3,
        body: Container(
          child: value == false
              ? Center(
                  heightFactor: 2.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icon_empty_cart.png",
                        height: 80.5,
                        width: 80,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Opss! Your Cart is Empty",
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
              : CartiItem(),
        ));
  }
}
