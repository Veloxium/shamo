import 'package:flutter/material.dart';
import 'package:latihan_mobile/components/slider/slider.dart';
import 'package:latihan_mobile/components/verticalcard/verticalcard.dart';
import 'package:latihan_mobile/utils/constans.dart';

class AllShoes extends StatelessWidget {
  const AllShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            "Popular Products",
            style: CTextStyles.titleHome,
          ),
        ),
        const SizedBox(
          height: 14.0,
        ),
        const SliderCard(),
        const SizedBox(
          height: 30.0,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            "New Arrivals",
            style: CTextStyles.titleHome,
          ),
        ),
        const SizedBox(
          height: 14.0,
        ),
        const VerticalCard(),
      ],
    );
  }
}
