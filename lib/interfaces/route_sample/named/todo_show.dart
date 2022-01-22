import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground_todo/domain/todo/todo.dart';
import 'package:playground_todo/domain/todo/todo_info.dart';
import 'package:playground_todo/interfaces/home.dart';

class TodoShowPage extends StatelessWidget {
  const TodoShowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TodoShow Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.parameters['id']}"),
            Text((Get.arguments as TodoInfo).name),
          ],
        ),
      ),
    );
  }
}
