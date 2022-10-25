import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_named_route/next_screen.dart';
import 'package:navigation_named_route/unknown_route.dart';
import 'home.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //for unknownRoute If the route is not present with us
      unknownRoute:
          GetPage(name: "/notfound", page: () => const UnKnownRoute()),
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: "/home", page: () => const Home()),
        // GetPage(name: "/nextScreen", page: ()=>const NextScreen(),transition: Transition.leftToRight ),
        //for some value pass to nextScreen
        GetPage(
            name: "/nextScreen/:someValue",
            page: () => const NextScreen(),
            transition: Transition.leftToRight),
      ],
      title: "Named Route Nav",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Navigation_Named_Route"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (() =>
                      // Get.toNamed("/home"),
                      //Dynamic Url Link with some parameters
                      Get.toNamed(
                          "/home?channel=Iki_Software&content=flutterGetX")),
                  child: const Text("Go TO Home"))
            ],
          ),
        ),
      ),
    );
  }
}
