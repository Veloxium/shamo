import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_mobile/utils/constans.dart';

class AddressDetails extends StatelessWidget {
  const AddressDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: CColors.bgitemcart,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Address Details",
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
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: CColors.bgColor3,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Icon(
                  CupertinoIcons.square_fill_on_square_fill,
                  color: CColors.secondary,
                  size: 16,
                ),
              ),
              const SizedBox(
                width: 12.0,
              ),
              Column(
                children: [
                  Text(
                    'Store Location',
                    style: GoogleFonts.poppins(
                      color: CColors.secondaryText,
                      fontWeight: FontWeight.w300,
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    'Adidas Core',
                    style: GoogleFonts.poppins(
                      color: CColors.primaryText,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 4),
            child: Image.asset(
              'assets/icon_line.png',
              width: 30.0,
              height: 30.0,
            ),
          ),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: CColors.bgColor3,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Icon(
                  Icons.location_on_rounded,
                  color: CColors.secondary,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 12.0,
              ),
              Column(
                children: [
                  Text(
                    'Your Address',
                    style: GoogleFonts.poppins(
                      color: CColors.secondaryText,
                      fontWeight: FontWeight.w300,
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    'Adidas Core',
                    style: GoogleFonts.poppins(
                      color: CColors.primaryText,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}