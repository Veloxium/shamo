import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class LayoutController extends GetxController {
  RxInt selectedIndex = 0.obs; // Using Rx for reactive updates

  void changeIndex(RxInt index) {
    selectedIndex.value = index.value;
  }
}
