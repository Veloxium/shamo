import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_mobile/features/home/controller/home_controller.dart';
import 'package:latihan_mobile/utils/constans.dart';

class CategoryFilter extends StatelessWidget {
  CategoryFilter({super.key});

  final HomeController controller = Get.put(HomeController());

  final List<String> categories = [
    "All Shoes",
    "Running",
    "Training",
    "Basketball",
    "Styling",
    "Soccer",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var category in categories)
            Obx(
              () => GestureDetector(
                onTap: () {
                  controller.changeFilter(category);
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  decoration: BoxDecoration(
                    color: controller.filter.value == category
                        ? CColors.primary
                        : CColors.bgColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: controller.filter.value == category
                          ? CColors.primary
                          : CColors.categoryColor,
                          width: 0.5,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                  child: Text(
                    category,
                    style: TextStyle(
                      color: controller.filter.value == category
                          ? CColors.white
                          : CColors.categoryColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
