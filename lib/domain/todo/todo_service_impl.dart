import 'package:playground_todo/domain/todo/todo.dart';
import 'package:playground_todo/domain/todo/todo_service.dart';

class TodoServiceImpl implements TodoService {
  @override
  List<Todo> getAllTodos() {
    final todos = [
      Todo(id: 1, name: "name1", description: "description", done: false, userId: 1),
      Todo(id: 2, name: "name2", description: "description", done: false, userId: 1),
      Todo(id: 3, name: "name3", description: "description", done: false, userId: 1),
      Todo(id: 4, name: "name4", description: "description", done: false, userId: 1),
      Todo(id: 5, name: "name5", description: "description", done: false, userId: 1),
    ];

    return todos;
  }
}