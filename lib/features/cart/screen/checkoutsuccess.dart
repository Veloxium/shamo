import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_mobile/features/layout/screen/layout.dart';
import 'package:latihan_mobile/utils/constans.dart';

class CheckoutSuccess extends StatelessWidget {
  const CheckoutSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Checkout Success',
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
        body: Center(
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
                "You made a transaction!",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: CColors.primaryText,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 200),
                child: Text(
                  "Stay at home while we prepare your dream shoes",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: CColors.secondaryText,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: 196,
                child: ElevatedButton(
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
                  onPressed: () {
                    Get.clearRouteTree();
                    Get.offAll(
                      () => const LayoutScreen(),
                    );
                  },
                  child: Text(
                    "Buy Other Shoes",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: CColors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              SizedBox(
                width: 196,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CColors.btnsecondary,
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
                    "View My Order",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: CColors.btnsecondarytext,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
