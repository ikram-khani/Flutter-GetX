import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_unnamed/home.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "navigation using unnamed routes",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Main Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    //we can also recieve data from the next screen by using "var data= await Get.to()"
                    var data = await Get.to(
                      const Home(),
                      //to make the screen full dialog
                      fullscreenDialog: true,
                      //for animation
                      transition: Transition.zoom,

                      //curve animation
                      curve: Curves.bounceInOut,
                      arguments: "Data from main",
                    );
                    //go to home but no option to return to previos page
                    // Get.off(const Home());
                    //go to home but delete all the previos screens and routes
                    // Get.offAll(const Home());
                    //got to home with some data
                    print(data);
                  },
                  child: const Text("Home Page")),
            ],
          ),
        ),
      ),
    );
  }
}
