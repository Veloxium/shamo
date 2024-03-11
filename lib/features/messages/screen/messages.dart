import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_mobile/features/messages/controller/messages_controller.dart';
import 'package:latihan_mobile/features/messages/screen/messageschat.dart';
import 'package:latihan_mobile/utils/constans.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});
  final MessageController controller = Get.put(MessageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Message Support',
            style: GoogleFonts.poppins(
              color: CColors.white,
              fontWeight: FontWeight.w400,
              fontSize: 18.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: CColors.bgColor,
          toolbarHeight: 87.0,
        ),
        backgroundColor: CColors.bgColor3,
        body: ListView(
          children: [
            Obx(
              () => controller.chat.value == false
                  ? Center(
                      heightFactor: 2.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icon_headset.png",
                            height: 80.5,
                            width: 80,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "Opss no message yet?",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: CColors.primaryText,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Text(
                            "You have never done a transaction",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: CColors.secondaryText,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CColors.primary,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24.0,
                                vertical: 10.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                            onPressed: () {
                              controller.changeChat(true);
                            },
                            child: Text(
                              "Explore Store",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: CColors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : MessageChatScreen(),
            )
          ],
        ));
  }
}
