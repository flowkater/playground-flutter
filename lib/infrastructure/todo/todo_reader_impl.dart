import 'package:playground_todo/domain/todo/todo.dart';
import 'package:playground_todo/domain/todo/todo_reader.dart';
import 'package:playground_todo/infrastructure/repository/todo_repository.dart';

class TodoReaderImpl implements TodoReader {
  final TodoRepository _todoRepository;

  TodoReaderImpl({required todoRepository}) : _todoRepository = todoRepository;

  @override
  Future<List<Todo>> getAllTodos() async {
    return await _todoRepository.getAllTodos();
  }

}