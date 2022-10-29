import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internationalization/controller.dart';
import 'package:internationalization/message.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Message(), //your translation
      locale: const Locale('en_US'), //default locale
      //to get device locale Get.deviceLocale
      fallbackLocale:
          const Locale('en_US'), //fallback locale if wrong locale found
      title: "Internationalization",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Internationalization"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: const TextStyle(fontSize: 20, color: Colors.deepOrange),
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: (() => myController.changeLanguage('ar', 'SA')),
                  child: const Text("ARABIC")),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: (() => myController.changeLanguage('zh', 'CN')),
                  child: const Text("CHINESE")),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: (() => myController.changeLanguage('en', 'US')),
                  child: const Text("ENGLISH")),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: (() => myController.changeLanguage('ur', 'PK')),
                  child: const Text("URDU")),
            ],
          ),
        ),
      ),
    );
  }
}
