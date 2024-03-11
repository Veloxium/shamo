import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_mobile/features/messages/controller/messages_controller.dart';
import 'package:latihan_mobile/features/messages/screen/chatroom.dart';
import 'package:latihan_mobile/utils/constans.dart';

class MessageChatScreen extends StatelessWidget {
  MessageChatScreen({super.key});
  final MessageController controller = Get.put(MessageController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 33.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Get.to(
                () => ChatRoom(),
              );
            },
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/image_shop_logo.png",
                          height: 54,
                          width: 54,
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shoe Store",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: CColors.primaryText,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 189,
                              child: Text(
                                "Hi!",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: CColors.secondaryText,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "Now",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: CColors.secondaryText,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const Divider(
                  color: CColors.bgColor2,
                  thickness: 1.0,
                  height: 1,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40.0)),
                        child: Image.network(
                          "https://t-2.tstatic.net/sumsel/foto/bank/images/Penggunaan-kata-Chawnima-dalam-salah-satu-konten-TikTokers-Hansen.jpg",
                          height: 54,
                          width: 54,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Uncle Atong",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: CColors.primaryText,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 189,
                            child: Text(
                              "Haiyaa, Ini macam chaoni",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: CColors.secondaryText,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "11:09 PM",
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: CColors.secondaryText,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Divider(
                color: CColors.bgColor2,
                thickness: 1.0,
                height: 1,
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: ElevatedButton(
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
                controller.changeChat(false);
              },
              child: Text(
                "Back",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: CColors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
