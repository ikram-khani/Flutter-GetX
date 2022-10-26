import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx_controller/controller.dart';
import 'package:getx_controller/student.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State management",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //in case of individual reactive variable
              Obx(() => Text("Name is ${myController.student.name}")),

              //in case of entire observable class
              // Obx(() => Text("Name is ${myController.student.value.name}")),

              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: (() {
                    myController.convertToUpperCase();
                  }),
                  child: const Text("Upper"))
            ],
          ),
        ),
      ),
    );
  }
}
