import 'package:get/get.dart';
import 'package:playground_todo/application/todo/todo_facade.dart';
import 'package:playground_todo/domain/todo/todo_service_impl.dart';
import 'package:playground_todo/interfaces/todo/todo_controller.dart';

class TodoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodoController>(
      () {
        return TodoController(
          todoFacade: TodoFacade(
            todoService: TodoServiceImpl(),
          ),
        );
      },
    );
  }
}
