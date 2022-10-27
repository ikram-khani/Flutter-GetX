import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  //MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Simple state management",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Simple State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                init: MyController(),
                //init means 'initialize' means it will alow the builder to create it's instance but that instance
                //will be only used in builder method and in other place we have to use .find method of get to find
                //the unknown instance of the controller and use it

                builder: (controller) {
                  return Text(
                    //in case of init
                    "The count is ${controller.count}",

                    //in case of public instance of MyController class
                    // "The count is ${myController.count}",
                    style: const TextStyle(fontSize: 18),
                  );
                },
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: (() {
                    //in case of the init
                    Get.find<MyController>().increment();

                    //in case of the public instance of the MyController class
                    // myController.increment();
                  }),
                  child: const Text("Increment"))
            ],
          ),
        ),
      ),
    );
  }
}
