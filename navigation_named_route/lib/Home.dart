import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen", style: TextStyle(fontSize: 18)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "This Is Home Screen",
            style: TextStyle(fontSize: 15, color: Colors.purpleAccent),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            child: const Text("Next Screen"),
            onPressed: () => Get.toNamed("/nextScreen/32726Ikram"),
            //if there is no parameters on the route so we can simply write /nextScreen
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
              onPressed: (() => Get.back()), child: const Text("Back To Main")),
          const SizedBox(
            height: 8,
          ),
          Text(
              "The channel Name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}")
        ],
      ),
    );
  }
}
