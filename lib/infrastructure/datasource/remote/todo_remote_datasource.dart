
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:playground_todo/config/graphql/generated/graphqls.dart';
import 'package:playground_todo/infrastructure/datasource/remote/dto/todo_dto.dart';
import 'package:playground_todo/infrastructure/datasource/remote/remote_datasource.dart';

class TodoRemoteDataSource with RemoteDateSource {
  Future<List<TodoDto>> getTodos(
      String userId) async {
    try {
      final result = await getGraphqlClient().query(QueryOptions(
          document: GetTodosQuery(
                  variables: GetTodosArguments(userId: userId))
              .document,
          variables: {
            'userId': userId,
          }));
      print(result);

      return GetTodos$Query.fromJson(result.data!)
          .todos
          .map((e) => TodoDto.fromJson(e.toJson()))
          .toList();
    } on Exception catch (exception) {
      throw exception;
    }
  }
}