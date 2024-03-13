import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_mobile/components/button/cbutton.dart';
import 'package:latihan_mobile/features/cart/screen/checkout.dart';
import 'package:latihan_mobile/utils/constans.dart';

class CartiItem extends StatelessWidget {
  const CartiItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
          padding: const EdgeInsets.all(30),
          itemCount: 2,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.only(bottom: index == 4 ? 0 : 16),
            decoration: BoxDecoration(
              color: CColors.bgitemcart,
              borderRadius: BorderRadius.circular(12.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            "assets/image_shoes${index == 1 ? "2" : ""}.png",
                            height: 80.5,
                            width: 80,
                          ),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Terrex Urban Low",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: CColors.primaryText,
                              ),
                            ),
                            Text(
                              "\$143,98,",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: CColors.price,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: CColors.primary,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: CColors.primaryText,
                            size: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "1",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: CColors.primaryText,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: CColors.btnmin,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: const Icon(
                            Icons.remove,
                            color: CColors.primaryText,
                            size: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.delete,
                          color: CColors.alert,
                          size: 16,
                        ),
                        Text(
                          "Remove",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: CColors.alert,
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
        )),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: CColors.primaryText,
                    ),
                  ),
                  Text(
                    "\$287,96",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: CColors.price,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Divider(
                color: CColors.bgColor2,
                thickness: 2,
              ),
              const SizedBox(
                height: 30.0,
              ),
              SizedBox(
                height: 50.0,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () {
                    Get.to(() => const Checkout());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Continue to Checkout",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: CColors.primaryText),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: CColors.primaryText,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
