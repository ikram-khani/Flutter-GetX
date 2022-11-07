import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_view_and_get_widget/counter_controller.dart';

void main() {
  runApp(MyApp());
}

///GetView
///if we have single controller as a dependency then we can use GetView instead of statelesswidget and avoid Get.find
///GetWidget
///it is similar to GetView with one difference it gives the same instance of get.find everytime .it becomes very useful when used in combination with Get.create
class MyApp extends GetView<CounterController> {
  @override
  Widget build(BuildContext context) {
    Get.put(CounterController());
    //Get.create(()=>CountController()) //in case of GetWidget
    return GetMaterialApp(
      title: "counter using getview",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter using GetView"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(() => Text("Count value is ${controller.count}")),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                    onPressed: () {
                      print(controller.hashCode);
                      controller.increment();
                    },
                    child: const Text("Increment"))
              ]),
        ),
      ),
    );
  }
}
