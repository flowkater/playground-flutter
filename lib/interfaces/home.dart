import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground_todo/interfaces/route_sample/normal/first.dart';
import 'package:playground_todo/interfaces/todo/todo_controller.dart';

class Home extends GetView<TodoController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text("${controller.todoList.length}")),
      ),
      body: Column(
        children: [
          Center(
            child: CupertinoButton(
                child: const Text("Route"),
                onPressed: () {
                  Get.to(const FirstPage());
                }),
          ),
          Center(
            child: CupertinoButton(
                child: const Text("Named Route"),
                onPressed: () {
                  Get.toNamed("/first");
                }),
          ),
          Expanded(
            child: (Obx(
              () => ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: controller.todoList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: GestureDetector(
                      child:
                          Text('Todo ${controller.todoList[index].name}'),
                      onTap: () {
                        Get.toNamed(
                          "/todos/${controller.todoList[index].id}",
                          arguments: controller.todoList[index],
                        );
                      },
                    ),
                  );
                },
              ),
            )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add), onPressed: controller.addTodo),
    );
  }
}
