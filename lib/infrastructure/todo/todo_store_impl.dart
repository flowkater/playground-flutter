import 'package:playground_todo/domain/todo/todo.dart';
import 'package:playground_todo/domain/todo/todo_store.dart';
import 'package:playground_todo/infrastructure/repository/todo_repository.dart';

class TodoStoreImpl implements TodoStore {
  final TodoRepository _todoRepository;

  TodoStoreImpl({required todoRepository}) : _todoRepository = todoRepository;

  @override
  Future<Todo> store(Todo todo) async {
    return await _todoRepository.store(todo);
  }
}