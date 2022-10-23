import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Show Diolog",
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (() {
                      Get.defaultDialog(
                          title: "Show Dialog",
                          middleText: "This is ShowDiolog",
                          titleStyle: const TextStyle(fontSize: 25),
                          middleTextStyle: const TextStyle(fontSize: 20),
                          backgroundColor:
                              const Color.fromARGB(208, 70, 253, 140),
                          radius: 80,
                          //content will override the default middle text
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              CircularProgressIndicator(),
                              SizedBox(
                                width: 16,
                              ),
                              Expanded(child: Text("Data Loading"))
                            ],
                          ),
                          //default cancel and confirm action
                          onCancel: () {},
                          onConfirm: () {},
                          //colors for default cancel and confirm
                          buttonColor: Colors.blue,
                          //customize the default cancel and confirm
                          //override the default cancel and confirm

                          cancel: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: const Text(
                                "CANCEL",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                          confirm: ElevatedButton(
                              onPressed: (() {}),
                              child: const Text(
                                "CONFIRM",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 222, 227, 210)),
                              )),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    onPressed: (() {}),
                                    child: const Text("Action1")),
                                ElevatedButton(
                                    onPressed: (() {}),
                                    child: const Text("Action2"))
                              ],
                            )
                          ],
                          barrierDismissible: false);
                    }),
                    child: const Text("Show Diolog"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
