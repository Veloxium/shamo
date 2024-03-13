import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_mobile/features/auth/screen/signin.dart';
import 'package:latihan_mobile/features/auth/screen/signup.dart';
import 'package:latihan_mobile/features/cart/screen/cart.dart';
import 'package:latihan_mobile/features/favorite/screen/favorite.dart';
import 'package:latihan_mobile/features/home/screen/home.dart';
import 'package:latihan_mobile/features/layout/controller/layout_controller.dart';
import 'package:latihan_mobile/features/messages/screen/messages.dart';
import 'package:latihan_mobile/features/profile/screen/profile.dart';
import 'package:latihan_mobile/utils/constans.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  final LayoutController controller = Get.put(LayoutController());
  final PageController _pageController = PageController();
  final List<Widget> _children = [
    HomeScreen(),
    MessageScreen(),
    FavoriteScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColors.bgColor,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          controller.changeIndex(index.obs);
        },
        children: _children,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          shape: const CircleBorder(side: BorderSide()),
          onPressed: () {
            Get.to(() => CartScreen());
          },
          backgroundColor: CColors.primary,
          elevation: 0,
          child: Image.asset(
            "assets/icon_cart.png",
            height: 22,
            width: 20,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),
        child: BottomAppBar(
          height: 76,
          notchMargin: 10.0,
          shape: const CircularNotchedRectangle(),
          color: CColors.bgColor2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              for (var i = 0; i < 2; i++)
                IconButton(
                  onPressed: () {
                    _pageController.animateToPage(
                      i,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.linear,
                    );
                  },
                  icon: Obx(
                    () => Icon(
                      i == 0 ? Icons.home : Icons.chat,
                      size: 26,
                      color: controller.selectedIndex.value == i
                          ? CColors.primary
                          : CColors.iconBar,
                    ),
                  ),
                ),
              const SizedBox(
                width: 100.0,
              ),
              for (var i = 2; i < 4; i++)
                IconButton(
                  onPressed: () {
                    _pageController.animateToPage(
                      i,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.linear,
                    );
                  },
                  icon: Obx(
                    () => Icon(
                      i == 2 ? Icons.favorite : Icons.person,
                      size: 26,
                      color: controller.selectedIndex.value == i
                          ? CColors.primary
                          : CColors.iconBar,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
