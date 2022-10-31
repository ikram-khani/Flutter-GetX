import 'package:binding/controller.dart';
import 'package:binding/home_controller.dart';
import 'package:get/get.dart';

class AllController implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
  }
}
