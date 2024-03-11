import 'package:get/get.dart';

class HomeController extends GetxController {
  var filter = "All Shoes".obs; // Using Rx for reactive updates

  void changeFilter(String newFilter) {
    filter.value = newFilter;
  }
}
