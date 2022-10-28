import 'package:get/get.dart';
import 'package:flutter/material.dart';

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
      title: "Workers in GetXController",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Workers in GetXController"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (() {
                      myController.increment();
                    }),
                    child: const Text("Increment")),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    onChanged: (value) => myController.increment(),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
