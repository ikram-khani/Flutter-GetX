import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

///in previous examples we were creating GetX controller instances
///inside our UI code which cause tight coupling in order to decouple
///we will use binding iterface for instances of the getx controller

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() =>
                Text("Value of count:${Get.find<HomeController>().count}")),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: (() => Get.find<HomeController>().increment()),
                child: const Text("Increment")),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: (() => Get.back()), child: const Text("Back")),
          ],
        ),
      ),
    );
  }
}
