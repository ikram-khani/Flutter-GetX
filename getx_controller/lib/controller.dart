import 'package:get/get.dart';
import 'package:getx_controller/student.dart';

class MyController extends GetxController {
  var student = Student();
  void convertToUpperCase() {
    student.name.value = student.name.value.toUpperCase();

    //for entire observable class
    // var student = Student(name: "ikram", age: 19).obs;
    // void convertToUpperCase() {
    //   student.update((val) {
    //     student.value.name = student.value.name.toString().toUpperCase();
    //   });
  }
}
