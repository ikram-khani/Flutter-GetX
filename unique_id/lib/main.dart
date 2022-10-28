import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:unique_id/controller.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Unique Id",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Unique id using getX"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GetBuilder(
                    init: myController,
                    id: 'txtcount',
                    builder: ((controller) {
                      return Text("the count is ${myController.count}");
                    })),
                const SizedBox(
                  height: 8,
                ),
                GetBuilder(
                    init: myController,
                    //it wil be not updated cz it doesn't uses the update id
                    builder: ((controller) {
                      return Text("the count is ${myController.count}");
                    })),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                    onPressed: (() {
                      myController.increment();
                    }),
                    child: const Text("Increment"))
              ]),
        ),
      ),
    );
  }
}
