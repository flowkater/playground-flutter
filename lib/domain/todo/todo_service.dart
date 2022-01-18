import 'package:playground_todo/domain/todo/todo.dart';

abstract class TodoService {
  Future<List<Todo>> getAllTodos();
  Future<Todo> addTodo(Todo todo);
}