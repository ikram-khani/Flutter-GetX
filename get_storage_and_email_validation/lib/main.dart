import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main(List<String> args) async {
  await GetStorage.init(); //initialize storage driver
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var emailEditingController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Get storage and email validation",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Get storage and email validation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: emailEditingController,
                  cursorColor: Colors.blueGrey,
                  style: const TextStyle(color: Colors.blueGrey, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: (() {
                    if (GetUtils.isEmail(emailEditingController.text)) {
                      //if the text in the textfield is email
                      storage.write('email', emailEditingController.text);
                      //email=key,value=emaileditingcontroller.text
                      //it will store the string in key value pair for us
                    } else {
                      Get.snackbar('ERROR', "Email address is not valid",
                          titleText: const Text(
                            "ERROR",
                            style: TextStyle(color: Colors.red, fontSize: 18),
                          ),
                          messageText: const Text(
                            "Email address is not valid",
                            style: TextStyle(
                                color: Colors.yellowAccent, fontSize: 13),
                          ),
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor:
                              const Color.fromARGB(255, 236, 137, 145));
                    }
                  }),
                  child: const Text("Write")),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: (() {
                    print("the email is ${storage.read("email")}");
                  }),
                  child: const Text('Read'))
            ],
          ),
        ),
      ),
    );
  }
}
