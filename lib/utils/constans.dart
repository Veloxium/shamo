import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CColors {
  CColors._();

  static const Color white = Color(0xFFF1F0F2);

  static const Color primary = Color(0xFF6C5ECF);
  static const Color secondary = Color(0xFF38ABBE);
  static const Color alert = Color(0xFFED6363);
  static const Color price = Color(0xFF2C96F1);
  static const Color itemchat = Color(0xFF6C5ECF);
  static const Color bgitemchat = Color(0xFF2B2844);



  static const Color bgColor = Color(0xFF1F1D2B);
  static const Color bgColor2 = Color(0xFF2B2937);
  static const Color bgColor3 = Color(0xFF242231);

  static const Color primaryText = Color(0xFFF1F0F2);
  static const Color secondaryText = Color(0xFF999999);
  static const Color sublabel = Color(0xFF504F5E);

  static const Color iconBar = Color(0xFF808191);
  static const Color categoryColor = Color(0xFF504F5E);

  static const Color titleCard = Color(0xFF2E2E2E);
}

class CTextStyles {
  static TextStyle title = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: CColors.primaryText,
  );

  static TextStyle subtitle = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: CColors.secondaryText,
  );

  static TextStyle label = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: CColors.primaryText,
  );

  static TextStyle sublabel = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: CColors.sublabel,
  );

  static TextStyle iscategory = GoogleFonts.poppins(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: CColors.primaryText,
  );

  static TextStyle category = GoogleFonts.poppins(
    fontSize: 13,
    fontWeight: FontWeight.w300,
    color: CColors.categoryColor,
  );

  static TextStyle categorylabel = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: CColors.secondaryText,
  );

   static TextStyle titleHome = GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: CColors.primaryText,
  );


}
