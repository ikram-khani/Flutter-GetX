import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mycontroller extends GetxController {
  void incrementCounter() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    int counter = (pref.getInt('counter') ?? 0) + 1;
    print('pressed $counter times.');
    await pref.setInt('counter', counter);
  }
}
