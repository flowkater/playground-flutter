import 'package:playground_todo/domain/todo/todo.dart';

class AddTodoCommand {
  final int userId;
  final String name;
  final String description;
  final String? dueDate;

  AddTodoCommand({required this.userId, required this.name, required this.description, this.dueDate});

  Todo toDomain() {
    return Todo(
        id: -1,
        name: name,
        description: description,
        userId: userId,
        done: false,
        dueDate: dueDate);
  }
}