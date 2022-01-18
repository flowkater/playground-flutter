// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphqls.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTodos$Query$Todo$User _$GetTodos$Query$Todo$UserFromJson(
    Map<String, dynamic> json) {
  return GetTodos$Query$Todo$User()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$GetTodos$Query$Todo$UserToJson(
        GetTodos$Query$Todo$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

GetTodos$Query$Todo _$GetTodos$Query$TodoFromJson(Map<String, dynamic> json) {
  return GetTodos$Query$Todo()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..done = json['done'] as bool
    ..dueDate = json['dueDate'] as String?
    ..description = json['description'] as String?
    ..userId = json['userId'] as String
    ..user =
        GetTodos$Query$Todo$User.fromJson(json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetTodos$Query$TodoToJson(
        GetTodos$Query$Todo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'done': instance.done,
      'dueDate': instance.dueDate,
      'description': instance.description,
      'userId': instance.userId,
      'user': instance.user.toJson(),
    };

GetTodos$Query _$GetTodos$QueryFromJson(Map<String, dynamic> json) {
  return GetTodos$Query()
    ..todos = (json['todos'] as List<dynamic>)
        .map((e) => GetTodos$Query$Todo.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$GetTodos$QueryToJson(GetTodos$Query instance) =>
    <String, dynamic>{
      'todos': instance.todos.map((e) => e.toJson()).toList(),
    };

CreateTodo$Mutation$Todo _$CreateTodo$Mutation$TodoFromJson(
    Map<String, dynamic> json) {
  return CreateTodo$Mutation$Todo()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..done = json['done'] as bool
    ..dueDate = json['dueDate'] as String?
    ..description = json['description'] as String?
    ..userId = json['userId'] as String;
}

Map<String, dynamic> _$CreateTodo$Mutation$TodoToJson(
        CreateTodo$Mutation$Todo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'done': instance.done,
      'dueDate': instance.dueDate,
      'description': instance.description,
      'userId': instance.userId,
    };

CreateTodo$Mutation _$CreateTodo$MutationFromJson(Map<String, dynamic> json) {
  return CreateTodo$Mutation()
    ..createTodo = CreateTodo$Mutation$Todo.fromJson(
        json['createTodo'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateTodo$MutationToJson(
        CreateTodo$Mutation instance) =>
    <String, dynamic>{
      'createTodo': instance.createTodo.toJson(),
    };

GetTodosArguments _$GetTodosArgumentsFromJson(Map<String, dynamic> json) {
  return GetTodosArguments(
    userId: json['userId'] as String,
  );
}

Map<String, dynamic> _$GetTodosArgumentsToJson(GetTodosArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

CreateTodoArguments _$CreateTodoArgumentsFromJson(Map<String, dynamic> json) {
  return CreateTodoArguments(
    userId: json['userId'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$CreateTodoArgumentsToJson(
        CreateTodoArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
    };
