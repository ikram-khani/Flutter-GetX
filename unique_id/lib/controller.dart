import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update(['txtcount']);
    //id pass in List to the update method
  }
}
