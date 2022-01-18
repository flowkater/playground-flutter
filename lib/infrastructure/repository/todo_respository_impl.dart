import 'package:playground_todo/config/graphql/generated/graphqls.dart';
import 'package:playground_todo/domain/todo/todo.dart';
import 'package:playground_todo/infrastructure/datasource/remote/todo_remote_datasource.dart';
import 'package:playground_todo/infrastructure/repository/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoRemoteDataSource _todoRemoteDataSource;

  TodoRepositoryImpl({required todoRemoteDataSource}) : _todoRemoteDataSource = todoRemoteDataSource;

  @override
  Future<List<Todo>> getAllTodos() async {
    try {
      final todoDtoList = await _todoRemoteDataSource.getTodos("2");
      return todoDtoList.map((e) => e.toDomain()).toList();
    } on Exception catch (exception) {
      throw exception;
    }
  }

  @override
  Future<Todo> store(Todo todo) async {
    try {
      final todoDto = await _todoRemoteDataSource.createTodo(CreateTodoArguments(userId: todo.userId.toString(), name: todo.name));
      return todoDto.toDomain();
    }  on Exception catch (exception) {
      throw exception;
    }
  }
}