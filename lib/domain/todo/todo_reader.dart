import 'package:playground_todo/domain/todo/todo.dart';

abstract class TodoReader {
  Future<List<Todo>> getAllTodos();
}