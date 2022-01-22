import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground_todo/interfaces/home.dart';
import 'package:playground_todo/module/todo_binding.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
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
                Get.offAll(Home(), binding: TodoBinding());
              },
            )
          ],
        ),
      ),
    );
  }
}
