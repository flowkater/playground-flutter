import 'package:playground_todo/domain/todo/todo.dart';

abstract class TodoStore {
  Future<Todo> store();
}