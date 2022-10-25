import 'package:flutter/material.dart';

class UnKnownRoute extends StatelessWidget {
  const UnKnownRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unknown Route"),
      ),
      body: const Center(
        child: Text(
          "unknown Route",
          style: TextStyle(fontSize: 30, color: Colors.red),
        ),
      ),
    );
  }
}
