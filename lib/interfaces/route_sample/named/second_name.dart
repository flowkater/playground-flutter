import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground_todo/interfaces/home.dart';

class SecondNamePage extends StatelessWidget {
  const SecondNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondName Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: const Text("Move to Back"),
              onPressed: () {
                Get.back();
              },
            ),
            OutlinedButton(
              child: const Text("Move to Home"),
              onPressed: () {
                Get.offAllNamed("/");
              },
            )
          ],
        ),
      ),
    );
  }
}
