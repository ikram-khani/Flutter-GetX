import 'package:get/get.dart';

class Student {
  ///classes can be made observable by make all individual variables observable
  ///or by making th entire class observable
  ///individual variables Rx
  //var name = "Ikram".obs;
  //var age = 19.obs;

//TO make the entire class observable
  var name;
  var age;
  Student({this.name, this.age});
}
