import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Message {
  final String sender;
  final String text;
  final String time;

  Message({required this.sender, required this.text, required this.time});
}

class MessageController extends GetxController {
  TextEditingController textEditingController = TextEditingController();
  RxBool chat = false.obs;
  RxBool item = false.obs;

  RxList<Message> chatMessages = <Message>[].obs;

  void changeChat(bool newCondition) {
    chat.value = newCondition;
  }

  void sendItem(bool newCondition) {
    item.value = newCondition;
  }

  void addMessage(String sender, String text, String time) {
    final newMessage = Message(sender: sender, text: text, time: time);
    chatMessages.add(newMessage);
    Future.delayed(const Duration(milliseconds: 1500), () {
      chatMessages.add(Message(
          sender: 'Bot',
          text: 'Haiyaaaa chaocibeee!',
          time: DateTime.now().toString()));
    });
  }
}
