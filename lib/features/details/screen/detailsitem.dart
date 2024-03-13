import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_mobile/features/details/controller/detailitems_controller.dart';
import 'package:latihan_mobile/utils/constans.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailsItem extends StatelessWidget {
  DetailsItem({super.key});
  final CarouselController controller = CarouselController();
  final DetailItemsController controllerDetail =
      Get.put(DetailItemsController());
  final RxInt activeIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 30.0, right: 19.0),
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 20.0,
              color: CColors.bgColor,
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 30.0, left: 19.0),
                  child: Image.asset(
                    "assets/cart.png",
                    width: 20,
                    height: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Obx(() => CarouselSlider.builder(
                carouselController: controller,
                itemCount: controllerDetail.urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = controllerDetail.urlImages[index];
                  return buildImage(urlImage, index);
                },
                options: CarouselOptions(
                  height: 260,
                  autoPlay: true,
                  enableInfiniteScroll: false,
                  autoPlayAnimationDuration: Duration(seconds: 2),
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) => activeIndex.value = index,
                ),
              )),
          Obx(() => buildIndicator()),
          const SizedBox(
            height: 6.0,
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(30.0),
            decoration: const BoxDecoration(
              color: CColors.bgColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nike Air Max 270",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: CColors.primaryText,
                          ),
                        ),
                        Text(
                          "Hiking",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: CColors.secondaryText,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 46,
                      height: 46,
                      decoration: BoxDecoration(
                        color: CColors.secondaryText,
                        borderRadius: BorderRadius.circular(46),
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: CColors.bgColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: CColors.bgColor2,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Price starts from",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: CColors.primaryText,
                        ),
                      ),
                      Text(
                        "\$143,98",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: CColors.price,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Description",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: CColors.primaryText,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  "Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: CColors.secondaryText,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Familiar Shoes",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: CColors.primaryText,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          "assets/image_shoes5.png",
                          width: 54,
                          height: 54,
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          "assets/image_shoes2.png",
                          width: 54,
                          height: 54,
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          "assets/image_shoes4.png",
                          width: 54,
                          height: 54,
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          "assets/image_shoes3.png",
                          width: 54,
                          height: 54,
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          "assets/image_shoes.png",
                          width: 54,
                          height: 54,
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            color: CColors.bgColor,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 54,
                  height: 54,
                  decoration: BoxDecoration(
                    color: CColors.bgColor,
                    border: Border.all(color: CColors.primary, width: 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.chat_rounded,
                    color: CColors.primary,
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                SizedBox(
                  width: 260,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CColors.primary,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      "Add to Cart",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: CColors.primaryText,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: const ExpandingDotsEffect(
            dotWidth: 10, activeDotColor: CColors.primary, dotHeight: 6),
        activeIndex: activeIndex.value,
        count: controllerDetail.urlImages.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);

  Widget buildImage(String urlImage, int index) => Container(
      color: Colors.white,
      width: double.infinity,
      child: Image.asset(
        urlImage,
        fit: BoxFit.cover,
      ));
}
