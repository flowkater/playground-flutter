import 'package:get/get.dart';
import 'package:playground_todo/application/todo/todo_facade.dart';
import 'package:playground_todo/domain/todo/todo_service_impl.dart';
import 'package:playground_todo/infrastructure/datasource/remote/todo_remote_datasource.dart';
import 'package:playground_todo/infrastructure/repository/todo_respository_impl.dart';
import 'package:playground_todo/infrastructure/todo/todo_reader_impl.dart';
import 'package:playground_todo/infrastructure/todo/todo_store_impl.dart';
import 'package:playground_todo/interfaces/todo/todo_controller.dart';

class TodoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodoController>(
      () {
        return TodoController(
          // todoFacade: TodoFacade(
          //   todoService: TodoServiceImpl(
          //     todoReader: TodoReaderImpl(
          //       todoRepository: TodoRepositoryImpl(
          //         todoRemoteDataSource: TodoRemoteDataSource(),
          //       ),
          //     ),
          //     todoStore: TodoStoreImpl(
          //       todoRepository: TodoRepositoryImpl(
          //         todoRemoteDataSource: TodoRemoteDataSource(),
          //       ),
          //     ),
          //   ),
          // ),
        );
      },
    );
  }
}
