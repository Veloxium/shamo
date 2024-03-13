import 'package:get/get.dart';

class DetailItemsController extends GetxController {
  final RxList<String> urlImages = <String>[].obs;

  @override
  void onInit() {
    urlImages.addAll([
      'assets/image_shoes.png',
      'assets/image_shoes2.png',
      'assets/image_shoes3.png',
      
    ]);

    super.onInit();
  }
  
}
