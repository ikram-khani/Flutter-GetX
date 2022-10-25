import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (() {
                  Get.back(result: "This is data from home screen");
                }),
                child: const Text("Previous Page")),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(onPressed: (() {}), child: const Text("Next Page")),
            const SizedBox(
              height: 8,
            ),
            Text(
              "${Get.arguments}",
              style: const TextStyle(color: Colors.green, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
