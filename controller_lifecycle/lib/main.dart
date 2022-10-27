import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "controller lifecycle",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("controller lifecycle"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                // initState: (state) => myController.increment(),
                // dispose: (state) => myController.cleanUpTask(),
                builder: (controller) {
                  return Text(
                    //in case of init
                    "The count is ${controller.count}",
                    style: const TextStyle(fontSize: 18),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
