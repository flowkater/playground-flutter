import 'package:playground_todo/domain/todo/todo_info.dart';
import 'package:playground_todo/domain/todo/todo_service.dart';

class TodoFacade {
  final TodoService _todoService;

  TodoFacade({required todoService}) : _todoService = todoService;

  List<TodoInfo> getAllTodoInfos() {
    final todos = _todoService.getAllTodos();
    return todos
        .map((t) => TodoInfo(
            id: t.id,
            name: t.name,
            description: t.description,
            dueDate: t.dueDate,
            done: t.done,
            userId: t.userId))
        .toList();
  }
}