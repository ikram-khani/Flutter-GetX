import 'package:get/state_manager.dart';

import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0; //not reactive
  void increment() async {
    await Future.delayed(const Duration(seconds: 3));
    count++;
    update();
    //it will update the count variable in all the widgets which use it
  }

  void cleanUpTask() {
    print("Clean up task");
  }

  //better uproach is to write  onclose and oninit method for controller lifecycle
  @override
  void onInit() {
    print("init called");
    super.onInit();
  }

  @override
  void onClose() {
    print("onClose called");
    super.onClose();
  }
}
