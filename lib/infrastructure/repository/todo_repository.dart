import 'package:playground_todo/domain/todo/todo.dart';

abstract class TodoRepository {
  Future<List<Todo>> getAllTodos();
}