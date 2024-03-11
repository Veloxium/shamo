import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_mobile/features/messages/controller/messages_controller.dart';
import 'package:latihan_mobile/utils/constans.dart';

class ChatRoom extends StatelessWidget {
  ChatRoom({super.key});
  final MessageController controller = Get.put(MessageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "assets/image_shop_logo_online.png",
              height: 50,
              width: 50,
            ),
            const SizedBox(
              width: 12.0,
            ),
            SizedBox(
              height: 42,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Shoe Store',
                    style: GoogleFonts.poppins(
                      color: CColors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    'Online',
                    style: GoogleFonts.poppins(
                      color: CColors.secondaryText,
                      fontWeight: FontWeight.w300,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: CColors.bgColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 19.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 18.0,
              color: CColors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        toolbarHeight: 90.0,
      ),
      backgroundColor: CColors.bgColor3,
      body: Column(
        children: [
          Row(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 6.0,
                ),
                decoration: const BoxDecoration(
                  color: CColors.bgitemchat,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                padding: const EdgeInsets.all(12),
                child: const Text(
                  "Hi!",
                  style: TextStyle(
                    color: CColors.primaryText,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Stack(
              children: [
                Obx(() {
                  return ListView.builder(
                    itemCount: controller.chatMessages.length,
                    itemBuilder: (context, index) {
                      final message = controller.chatMessages[index].text;
                      return Row(
                        mainAxisAlignment:
                            controller.chatMessages[index].sender == "me"
                                ? MainAxisAlignment.end
                                : MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 30.0,
                              vertical: 6.0,
                            ),
                            decoration: const BoxDecoration(
                              color: CColors.bgitemchat,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              message.toString(),
                              style: const TextStyle(
                                color: CColors.primaryText,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }),
                // Positioned(
                //   bottom: 0,
                //   left: 0,
                //   child: Container(
                //     alignment: Alignment.center,
                //     padding: const EdgeInsets.all(10),
                //     margin: const EdgeInsets.symmetric(horizontal: 20.0),
                //     height: 74,
                //     width: 228,
                //     decoration: BoxDecoration(
                //       color: CColors.bgitemchat,
                //       borderRadius: BorderRadius.circular(12),
                //       border: Border.all(
                //         color: CColors.itemchat,
                //         width: 1,
                //       ),
                //     ),
                //     child: Row(
                //       children: [
                //         ClipRRect(
                //           borderRadius: BorderRadius.circular(12),
                //           child: Image.asset(
                //             "assets/image_shoes.png",
                //             height: 54,
                //             width: 54,
                //           ),
                //         ),
                //         const SizedBox(
                //           width: 10.0,
                //         ),
                //         Column(
                //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             SizedBox(
                //               width: 98,
                //               child: Text(
                //                 "COURT VISIO 2021",
                //                 overflow: TextOverflow.ellipsis,
                //                 style: GoogleFonts.poppins(
                //                   fontSize: 14,
                //                   color: CColors.primaryText,
                //                   fontWeight: FontWeight.w400,
                //                 ),
                //               ),
                //             ),
                //             Text(
                //               "\$57,15",
                //               style: GoogleFonts.poppins(
                //                 fontSize: 14,
                //                 color: CColors.primary,
                //                 fontWeight: FontWeight.w400,
                //               ),
                //             )
                //           ],
                //         ),
                //         const SizedBox(
                //           width: 20.0,
                //         ),
                //         Container(
                //           alignment: Alignment.topCenter,
                //           child: InkWell(
                //               onTap: () {},
                //               child: Image.asset(
                //                 "assets/button_close.png",
                //                 height: 22,
                //                 width: 22,
                //                 fit: BoxFit.cover,
                //               )),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: CColors.bgColor2,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: TextField(
                        controller: controller.textEditingController,
                        maxLines: null,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: CColors.primaryText,
                          fontWeight: FontWeight.w400,
                        ),
                        keyboardType: TextInputType.multiline,
                        textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                          hintText: "Type Message...",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            color: CColors.secondaryText,
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                InkWell(
                  onTap: () {
                    controller.addMessage(
                      "me",
                      controller.textEditingController.text.toString(),
                      DateTime.now().toString(),
                    );
                    controller.textEditingController.clear();
                  },
                  child: Container(
                    width: 47,
                    height: 47,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: CColors.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.send,
                      color: CColors.white,
                      size: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
