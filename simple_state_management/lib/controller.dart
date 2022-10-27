import 'package:get/state_manager.dart';

import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0; //not reactive
  void increment() {
    count++;
    update();
    //it will update the count variable in all the widgets which use it
  }
}
