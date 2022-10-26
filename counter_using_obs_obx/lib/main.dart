import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//if we want that every time the value of a variable change we will have to use .obs to that variable value to make that variable reactive or observable

// to update the widget which use the Rx variable we have to wrap that widget inside obx(()=> youwidget())
//other way to create reactive variables
// final name =RxString('');
// final isLogged = RxBool('false');
//final count =RxInt(0);
//final balance = RxDoubel(0.0);
//final item= RxList<String>([])
//final myMap= RxMap<String, int>({})

//we can also use dart generic to create Rx variable
//example final name =Rx<String>("");

///code for counter
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Counter",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "Count Value is $count ",
                    style:
                        const TextStyle(fontSize: 15, color: Colors.blueGrey),
                  )),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: increment, child: const Text("Increment"))
            ],
          ),
        ),
      ),
    );
  }
}
