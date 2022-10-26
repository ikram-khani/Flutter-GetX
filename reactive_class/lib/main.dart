import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:reactive_class/student.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  //creating object of the class in case of individual variable reactive
  //var student = Student();

  //for making the entire class observable
  final student = Student(name: "Ikram", age: 19).obs;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State management",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //in case of individual reactive variable
              // Obx(() => Text("Name is ${student.name.value}")),

              //in case of entire observable class
              Obx(() => Text("Name is ${student.value.name}")),

              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: (() {
                    //if individual variables are observable
                    //student.name.value = student.name.value.toUpperCase();

                    //if entire class is observable then

                    student.update((student) {
                      student?.name = student.name.toString().toUpperCase();
                    });
                  }),
                  child: const Text("Upper"))
            ],
          ),
        ),
      ),
    );
  }
}
