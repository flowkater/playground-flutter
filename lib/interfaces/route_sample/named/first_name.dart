import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground_todo/interfaces/route_sample/normal/second.dart';

class FirstNamePage extends StatelessWidget {
  const FirstNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FirstName Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: const Text("Move to Next Page"),
              onPressed: () {
                Get.offNamed("/second");
              },
            )
          ],
        ),
      ),
    );
  }
}
