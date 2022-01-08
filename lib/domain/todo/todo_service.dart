import 'package:playground_todo/domain/todo/todo.dart';

abstract class TodoService {
  List<Todo> getAllTodos();
}