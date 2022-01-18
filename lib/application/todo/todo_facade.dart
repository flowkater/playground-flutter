import 'package:playground_todo/domain/todo/todo_command.dart';
import 'package:playground_todo/domain/todo/todo_info.dart';
import 'package:playground_todo/domain/todo/todo_service.dart';

class TodoFacade {
  final TodoService _todoService;

  TodoFacade({required todoService}) : _todoService = todoService;

  Future<List<TodoInfo>> getAllTodoInfos() async {
    final todos = await _todoService.getAllTodos();
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

  Future<TodoInfo> addTodoInfo(AddTodoCommand command) async {
    final todo = await _todoService.addTodo(command.toDomain());

    return TodoInfo(
        id: todo.id,
        name: todo.name,
        description: todo.description,
        dueDate: todo.dueDate,
        done: todo.done,
        userId: todo.userId);
  }
}
