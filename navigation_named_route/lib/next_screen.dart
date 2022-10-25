import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NextScreen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "${Get.parameters['someValue']}",
              style: const TextStyle(fontSize: 30, color: Colors.red),
            ),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () => Get.toNamed("/x"),
                child: const Text("Next Page")),
          )
        ],
      ),
    );
  }
}
