import 'package:dependency_injection/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ///tag will  be used to find instance with the tag name
    ///controller is dispose when it is not used but if permenant is true then the instance will be live throughout the app
    //Mycontroller mycontroller =
    // Get.put(Mycontroller(), tag: 'instance1', permanent: true);
    //instance will be created when it is used
    //fenix: similiar to permenant the difference is that the instance is discarded when it it is not used
    //but when its instance needed again get will create the instance again
    //Get.lazyPut(() => Mycontroller(), tag: 'instance2', fenix: true);
    Get.putAsync<Mycontroller>(() async => await Mycontroller());
    //here permenant will be true by default and isSingle is false
    // Get.create<Mycontroller>(() => Mycontroller());

    return GetMaterialApp(
      title: "Dependency injecttion",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dependency ingection"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (() =>
                      //instance will be created with tag
                      // Get.find<Mycontroller>(tag: 'instance1'),
                      //find instance
                      // Get.find<Mycontroller>()
                      Get.find<Mycontroller>().incrementCounter()),
                  child: const Text("Click me"))
            ],
          ),
        ),
      ),
    );
  }
}
