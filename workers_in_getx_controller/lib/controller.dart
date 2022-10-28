import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
    update();
    //id pass in List to the update method
  }

  @override
  void onInit() {
    //called every time when the value of count changes
    // ever(count, (callback) => print(count));

    // //called every time when the value of any variable from the list changes
    //everAll([count], ((callback) => print(count)));

    // //called every time when the user stop typing for 2 seconds//usually use when we are sending data to the server when the user stop input of data for 2 seconds then the data will be send to the server
    debounce(
        count,
        (callback) => print(
            "when the user stop typing for 2 seconds the value will be printed"),
        time: const Duration(seconds: 2));

    // //if a user on clicking 300 times in a minute earn 300 coins
    // //by using the intervals of 3 seconds in the same minutes (even by clicking thousand times) he will only earn 20 coins
    // interval(count, (callback) => print("ignore all changes"),
    //     time: const Duration(seconds: 3));
    super.onInit();
  }
}
