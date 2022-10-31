import 'package:binding/binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
import 'home.dart';

///in previous examples we were creating GetX controller instances
///inside our UI code which cause tight coupling in order to decouple
///we will use binding iterface for instances of the getx controller

void main(List<String> args) {
  //for getPages name routing the initial binding will be removed and in the main pagecontrollerBinding.dependencies will be added
  //AllController().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllController(),
      title: "Binding",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Binding"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() =>
                  Text("Value of count:${Get.find<MyController>().count}")),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: (() => Get.find<MyController>().increment()),
                  child: const Text("Increment")),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () => Get.to(const Home()),
                  child: const Text("Home")),
            ],
          ),
        ),
      ),
    );
  }
}
