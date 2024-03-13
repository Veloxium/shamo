import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_mobile/utils/constans.dart';

class CBorderTextForm extends StatelessWidget {
  const CBorderTextForm(
      {super.key,
      required this.label,
      required this.initialValue,
      this.onChanged});

  final String label;
  final String initialValue;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
              color: CColors.secondaryText,
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
            ),
          ),
          TextFormField(
            initialValue: initialValue,
            style: GoogleFonts.poppins(
              color: CColors.primaryText,
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
            ),
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: CColors.border,
                ),
              ),
            ),
            onChanged: onChanged ?? (value) {},
          ),
        ],
      ),
    );
  }
}
