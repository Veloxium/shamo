import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Message {
  final String sender;
  final String text;
  final String time;
  final bool? item;
  final String? image;
  final String? title;
  final String? price;

  Message(
      {required this.sender,
      required this.text,
      required this.time,
      this.item,
      this.image,
      this.title,
      this.price});
}

class MessageController extends GetxController {
  TextEditingController textEditingController = TextEditingController();
  RxBool chat = false.obs;
  RxBool item = true.obs;

  RxList<Message> chatMessages = <Message>[].obs;

  void changeChat(bool newCondition) {
    chat.value = newCondition;
  }

  void sendItem(bool newCondition) {
    item.value = newCondition;
  }

  void addMessage(
    String sender,
    String text,
    String time, {
    bool? item,
    String? image,
    String? title,
    String? price,
  }) {
    final newMessage = Message(
      sender: sender,
      text: text,
      time: time,
      item: item,
      image: image,
      title: title,
      price: price,
    );
    chatMessages.add(newMessage);
    Future.delayed(const Duration(milliseconds: 1500), () {
      chatMessages.add(
        Message(
          sender: 'Bot',
          text: 'Haiyaaaa chaocibeee!',
          time: DateTime.now().toString(),
        ),
      );
    });
  }
}
