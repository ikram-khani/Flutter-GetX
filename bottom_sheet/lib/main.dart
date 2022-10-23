import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bottom Sheet",
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.bottomSheet(
                      Wrap(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.wb_sunny_outlined),
                            title: const Text("Light Theme"),
                            onTap: () => Get.changeTheme(ThemeData.light()),
                          ),
                          ListTile(
                              leading: const Icon(Icons.wb_sunny),
                              title: const Text("Dark Theme"),
                              onTap: () => Get.changeTheme(ThemeData.dark()))
                        ],
                      ),
                      barrierColor: Colors.greenAccent.shade100,
                      backgroundColor: const Color.fromARGB(255, 228, 163, 240),
                      //isDismissible: false,
                      // enterBottomSheetDuration: const Duration(seconds: 2),
                      // exitBottomSheetDuration: const Duration(seconds: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2.0)),
                      // enableDrag: false
                    );
                  },
                  child: const Text("Bottom Sheet"))
            ],
          ),
        ),
      ),
    );
  }
}
