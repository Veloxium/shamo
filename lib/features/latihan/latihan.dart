import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LatihanScreen extends StatelessWidget {
  const LatihanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stack Example",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 60.0),
        color: Colors.white,
        width: 440,
        height: 800,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 30,
              child: Container(
                width: 132,
                height: 22,
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: 52,
              child: Container(
                width: 220,
                height: 22,
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: 52,
              child: Container(
                width: 132,
                height: 22,
                color: Colors.blue.shade300,
              ),
            ),
            Positioned(
              top: 74,
              child: Container(
                width: 265,
                height: 22,
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: 74,
              child: Container(
                width: 220,
                height: 22,
                color: Colors.blue.shade300,
              ),
            ),
            Positioned(
              top: 96,
              child: Container(
                width: 308,
                height: 22,
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: 96,
              child: Container(
                width: 264,
                height: 22,
                color: Colors.blue.shade300,
              ),
            ),
            Positioned(
              top: 118,
              child: Container(
                width: 352,
                height: 22,
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: 118,
              child: Container(
                width: 308,
                height: 22,
                color: Colors.blue.shade300,
              ),
            ),
            Positioned(
              top: 130,
              child: Container(
                width: 352,
                height: 22,
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: 130,
              child: Container(
                width: 308,
                height: 22,
                color: Colors.blue.shade300,
              ),
            ),
            Positioned(
              top: 130,
              child: Container(
                width: 220,
                height: 22,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 129,
              child: Container(
                width: 88,
                height: 23,
                color: Colors.blue.shade300,
              ),
            ),
            Positioned(
              top: 152,
              child: Container(
                width: 396,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
            Positioned(
              top: 152,
              child: Container(
                width: 352,
                height: 22,
                color: Colors.blue.shade300,
              ),
            ),
            Positioned(
              top: 152,
              child: Container(
                width: 264,
                height: 22,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 152,
              child: Container(
                width: 220,
                height: 22,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 152,
              child: Container(
                width: 88,
                height: 22,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 152,
              child: Container(
                width: 44,
                height: 22,
                color: Colors.amber,
              ),
            ),
            Positioned(
              top: 174,
              child: Container(
                width: 396,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
            Positioned(
              top: 174,
              child: Container(
                width: 352,
                height: 22,
                color: Colors.amber,
              ),
            ),
            Positioned(
              top: 174,
              child: Container(
                width: 308,
                height: 22,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 174,
              child: Container(
                width: 264,
                height: 22,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 174,
              child: Container(
                width: 88,
                height: 22,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 174,
              child: Container(
                width: 44,
                height: 22,
                color: Colors.amber,
              ),
            ),
            Positioned(
              top: 196,
              child: Container(
                width: 396,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
            Positioned(
              top: 196,
              child: Container(
                width: 352,
                height: 22,
                color: Colors.amber,
              ),
            ),
            Positioned(
              top: 196,
              child: Container(
                width: 308,
                height: 22,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 195,
              child: Container(
                width: 264,
                height: 23,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 196,
              child: Container(
                width: 132,
                height: 23,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 195,
              child: Container(
                width: 88,
                height: 24,
                color: Colors.amber,
              ),
            ),
            Positioned(
              top: 216,
              child: Container(
                width: 396,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
            Positioned(
              top: 216,
              child: Container(
                width: 352,
                height: 22,
                color: Colors.amber,
              ),
            ),
             Positioned(
              top: 216,
              child: Container(
                width: 308,
                height: 22,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 216,
              child: Container(
                width: 264,
                height: 22,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 216,
              child: Container(
                width: 176,
                height: 22,
                color: Colors.black,
              ),
            ),
             Positioned(
              top: 216,
              child: Container(
                width: 132,
                height: 22,
                color: Colors.amber,
              ),
            ),
              Positioned(
              top: 238,
              child: Container(
                width: 396,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
            Positioned(
              top: 238,
              child: Container(
                width: 352,
                height: 22,
                color: Colors.amber,
              ),
            ),
            Positioned(
              top: 238,
              child: Container(
                width: 264,
                height: 22,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 237,
              child: Container(
                width: 176,
                height: 23,
                color: Colors.amber,
              ),
            ),
            Positioned(
              top: 238,
              child: Container(
                width: 44,
                height: 22,
                color: Colors.black,
              ),
            ),
              Positioned(
              top: 260,
              child: Container(
                width: 396,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
            Positioned(
              top: 260,
              child: Container(
                width: 352,
                height: 22,
                color: Colors.amber,
              ),
            ),
            Positioned(
              top: 260,
              child: Container(
                width: 88,
                height: 22,
                color: Colors.black,
              ),
            ),
              Positioned(
              top: 260,
              child: Container(
                width: 44,
                height: 22,
                color: Colors.red,
              ),
            ),
              Positioned(
              top: 282,
              child: Container(
                width: 352,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
              Positioned(
              top: 282,
              child: Container(
                width: 220,
                height: 22,
                color: Colors.amber,
              ),
            ),
             Positioned(
              top: 282,
              child: Container(
                width: 88,
                height: 22,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 282,
              child: Container(
                width: 44,
                height: 22,
                color: Colors.red,
              ),
            ),
             Positioned(
              top: 304,
              child: Container(
                width: 352,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
             Positioned(
              top: 304,
              child: Container(
                width: 308,
                height: 22,
                color: Colors.amber,
              ),
            ),
             Positioned(
              top: 304,
              child: Container(
                width: 220,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
             Positioned(
              top: 304,
              child: Container(
                width: 176,
                height: 22,
                color: Colors.amber,
              ),
            ),
            Positioned(
              top: 304,
              child: Container(
                width: 88,
                height: 22,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 304,
              child: Container(
                width: 44,
                height: 22,
                color: Colors.red,
              ),
            ),
             Positioned(
              top: 326,
              child: Container(
                width: 352,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
            Positioned(
              top: 326,
              child: Container(
                width: 308,
                height: 22,
                color: Colors.amber,
              ),
            ),
            Positioned(
              top: 326,
              child: Container(
                width: 176,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
            Positioned(
              top: 326,
              child: Container(
                width: 132,
                height: 22,
                color: Colors.amber,
              ),
            ),
             Positioned(
              top: 326,
              child: Container(
                width: 88,
                height: 22,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 326,
              child: Container(
                width: 44,
                height: 22,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 348,
              child: Container(
                width: 308,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
            Positioned(
              top: 348,
              child: Container(
                width: 264,
                height: 22,
                color: Colors.amber,
              ),
            ),
            Positioned(
              top: 348,
              child: Container(
                width: 44,
                height: 22,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 370,
              child: Container(
                width: 264,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
            Positioned(
              top: 370,
              child: Container(
                width: 220,
                height: 22,
                color: Colors.amber,
              ),
            ),
            Positioned(
              top: 370,
              child: Container(
                width: 132,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
            Positioned(
              top: 370,
              child: Container(
                width: 44,
                height: 22,
                color: Colors.amber,
              ),
            ),
              Positioned(
              top: 392,
              child: Container(
                width: 264,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
            Positioned(
              top: 392,
              child: Container(
                width: 220,
                height: 22,
                color: Colors.amber,
              ),
            ),
            Positioned(
              top: 392,
              child: Container(
                width: 132,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
            Positioned(
              top: 392,
              child: Container(
                width: 88,
                height: 22,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 392,
              child: Container(
                width: 44,
                height: 22,
                color: Colors.amber.shade700,
              ),
            ),
            Positioned(
              top: 444,
              child: Container(
                alignment: Alignment.center,
                constraints: const BoxConstraints(
                  maxWidth: 200,
                ),
                child: Text(
                  "SIAPA SANGKA?",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.silkscreen(
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
