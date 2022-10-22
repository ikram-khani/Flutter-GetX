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
      title: "SnakBar",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("SnackBar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: (() => Get.snackbar(
                      "SnackBar Title ", "SnackBar Message",
                      //snackPosition: SnackPosition.BOTTOM,
                      titleText: const Text(
                          "SnackBar Title Text"), //it will override the titletex written before
                      messageText: const Text(
                        "This is snackbar message text",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      colorText: Colors.cyan,
                      backgroundColor: Colors.lightGreen,
                      borderRadius: 25,
                      borderColor: Colors.purple,
                      borderWidth: 4,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      maxWidth: 300,
                      forwardAnimationCurve: Curves.bounceInOut,
                      reverseAnimationCurve: Curves.bounceInOut,
                      animationDuration: const Duration(seconds: 2),
                      backgroundGradient: const LinearGradient(colors: [
                        Colors.transparent,
                        Color.fromARGB(255, 217, 250, 157)
                      ]),
                      boxShadows: [
                        const BoxShadow(
                            color: Colors.lightGreenAccent,
                            offset: Offset(30, 50),
                            spreadRadius: 20,
                            blurRadius: 8)
                      ],
                      dismissDirection: DismissDirection.horizontal,
                      isDismissible: true,
                      icon: const Icon(Icons.send),
                      shouldIconPulse: false,
                      showProgressIndicator: true,
                      leftBarIndicatorColor: Colors.red,
                      mainButton: TextButton(
                          onPressed: (() => null), child: const Text("Retry")),
                      overlayColor: Colors.grey,
                      progressIndicatorBackgroundColor: Colors.deepOrange,
                      progressIndicatorValueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.white),
                      snackbarStatus: (val) {
                        print("value");
                      },

                      /*userInputForm: Form(
                            child: Row(
                          children: const [Expanded(child: TextField())], 
                        ))*/
                    )),
                child: Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "SnackBar",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
