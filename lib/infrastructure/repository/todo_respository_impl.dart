import 'package:playground_todo/domain/todo/todo.dart';
import 'package:playground_todo/infrastructure/datasource/remote/todo_remote_datasource.dart';
import 'package:playground_todo/infrastructure/repository/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoRemoteDataSource _todoRemoteDataSource;

  TodoRepositoryImpl({required todoRemoteDataSource}) : _todoRemoteDataSource = todoRemoteDataSource;

  @override
  Future<List<Todo>> getAllTodos() async {
    try {
      final todoDtoList = await _todoRemoteDataSource.getTodos("1");
      final todoList = todoDtoList.map((e) => e.toDomain()).toList();

      return todoList;
    } on Exception catch (exception) {
      throw exception;
    }
  }
}