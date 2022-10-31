import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

///Like GetX controller (dependency injection (onInit(), onReady(),onClose()))
//it jsut notify dependency injection that the service will not be removed from the memory that it will be alive throughout the app

class MyService extends GetxService {
  void incrementCounter() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    int counter = (pref.getInt('counter') ?? 0) + 1;
    print('pressed $counter times.');
    await pref.setInt('counter', counter);
  }
}
