import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_services/services.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.putAsync<MyService>(() async => await MyService());

    return GetMaterialApp(
      title: "GetX Service",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GetX Service"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (() => Get.find<MyService>().incrementCounter()),
                  child: const Text("Click me"))
            ],
          ),
        ),
      ),
    );
  }
}
