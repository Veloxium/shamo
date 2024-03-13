import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_mobile/components/adressdetails/addressdetails.dart';
import 'package:latihan_mobile/components/button/cbutton.dart';
import 'package:latihan_mobile/features/cart/screen/checkoutsuccess.dart';
import 'package:latihan_mobile/utils/constans.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout Details',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("List Items",
                  style: GoogleFonts.poppins(
                    color: CColors.primaryText,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  )),
              const SizedBox(
                height: 12.0,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics(), // Disable scrolling
                itemCount: 2,
                itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(top: index != 0 ? 12.0 : 0),
                    decoration: BoxDecoration(
                      color: CColors.bgitemcart,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                'assets/image_shoes.png',
                                width: 60.0,
                                height: 60.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nike Air Max 270',
                                  style: GoogleFonts.poppins(
                                    color: CColors.primaryText,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  '\$143,98',
                                  style: GoogleFonts.poppins(
                                    color: CColors.price,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          '2 Items',
                          style: GoogleFonts.poppins(
                            color: CColors.secondaryText,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const AddressDetails(),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: CColors.bgitemcart,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment Summary",
                      style: GoogleFonts.poppins(
                        color: CColors.primaryText,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Product Quantity',
                          style: GoogleFonts.poppins(
                            color: CColors.secondaryText,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0,
                          ),
                        ),
                        Text(
                          '2 Items',
                          style: GoogleFonts.poppins(
                            color: CColors.primaryText,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Product Price',
                          style: GoogleFonts.poppins(
                            color: CColors.secondaryText,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0,
                          ),
                        ),
                        Text(
                          '\$575,96',
                          style: GoogleFonts.poppins(
                            color: CColors.primaryText,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping',
                          style: GoogleFonts.poppins(
                            color: CColors.secondaryText,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0,
                          ),
                        ),
                        Text(
                          'Free',
                          style: GoogleFonts.poppins(
                            color: CColors.primaryText,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    const Divider(
                      color: CColors.secondaryText,
                      thickness: 1.0,
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: GoogleFonts.poppins(
                            color: CColors.price,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          '\$575,92',
                          style: GoogleFonts.poppins(
                            color: CColors.primaryText,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        decoration: const BoxDecoration(
          color: CColors.bgColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: CButton(
          label: "Checkout Now",
          onPressed: () {
            Get.to(() => const CheckoutSuccess());
          },
        ),
      ),
    );
  }
}
