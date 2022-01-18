import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:playground_todo/config/graphql/generated/graphqls.dart';
import 'package:playground_todo/infrastructure/datasource/remote/dto/todo_dto.dart';
import 'package:playground_todo/infrastructure/datasource/remote/remote_datasource.dart';

class TodoRemoteDataSource with RemoteDateSource {
  Future<List<TodoDto>> getTodos(String userId) async {
    try {
      final result = await getGraphqlClient().query(QueryOptions(
          document: GetTodosQuery(variables: GetTodosArguments(userId: userId))
              .document,
          variables: {
            'userId': userId,
          }));

      return GetTodos$Query.fromJson(result.data!)
          .todos
          .map((e) => TodoDto.fromJson(e.toJson()))
          .toList();
    } on Exception catch (exception) {
      throw exception;
    }
  }

  Future<TodoDto> createTodo(CreateTodoArguments arguments) async {
    try {
      print("createTodo");
      final result = await getGraphqlClient().mutate(MutationOptions(
          document: CreateTodoMutation(
              variables: arguments).document,
          variables: {
            'userId': arguments.userId,
            'name': arguments.name,
          }));

      print(result);
      print(result.data);

      return TodoDto.fromJson(CreateTodo$Mutation.fromJson(result.data!).createTodo.toJson());

    } on Exception catch (exception) {
      throw exception;
    }
  }
}
