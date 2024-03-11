import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:latihan_mobile/components/allshoes/allshoes.dart';
import 'package:latihan_mobile/components/categoryfilter/category.dart';
import 'package:latihan_mobile/components/verticalcard/verticalcard.dart';
import 'package:latihan_mobile/features/home/controller/home_controller.dart';
import 'package:latihan_mobile/utils/constans.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColors.bgColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hallo, Alex",
                        style: CTextStyles.title,
                      ),
                      Text(
                        "@alexkeinn",
                        style: CTextStyles.subtitle,
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/image_profile.png",
                    width: 50,
                    height: 50,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            CategoryFilter(),
            const SizedBox(
              height: 30.0,
            ),
            Obx(
              () => controller.filter.value == "All Shoes"
                  ? const AllShoes()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            // "For You",
                            "For You ${controller.filter.value}",
                            style: CTextStyles.titleHome,
                          ),
                        ),
                        const SizedBox(
                          height: 14.0,
                        ),
                        const VerticalCard(),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
