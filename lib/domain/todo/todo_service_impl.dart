import 'package:get/get.dart';
import 'package:playground_todo/domain/todo/todo.dart';
import 'package:playground_todo/domain/todo/todo_reader.dart';
import 'package:playground_todo/domain/todo/todo_service.dart';
import 'package:playground_todo/domain/todo/todo_store.dart';
import 'package:playground_todo/infrastructure/todo/todo_reader_impl.dart';
import 'package:playground_todo/infrastructure/todo/todo_store_impl.dart';

class TodoServiceImpl implements TodoService {
  final TodoReader _todoReader = Get.put(TodoReaderImpl(), permanent: true);
  final TodoStore _todoStore = Get.put(TodoStoreImpl(), permanent: true);

  // TodoServiceImpl({required todoReader, required todoStore}) : _todoReader = todoReader, _todoStore = todoStore;

  @override
  Future<List<Todo>> getAllTodos() async {
    return await _todoReader.getAllTodos();
  }

  @override
  Future<Todo> addTodo(Todo todo) async {
    return await _todoStore.store(todo);
  }
}