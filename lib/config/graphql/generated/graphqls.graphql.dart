// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphqls.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class GetTodos$Query$Todo$User extends JsonSerializable with EquatableMixin {
  GetTodos$Query$Todo$User();

  factory GetTodos$Query$Todo$User.fromJson(Map<String, dynamic> json) =>
      _$GetTodos$Query$Todo$UserFromJson(json);

  late String id;

  late String name;

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() => _$GetTodos$Query$Todo$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetTodos$Query$Todo extends JsonSerializable with EquatableMixin {
  GetTodos$Query$Todo();

  factory GetTodos$Query$Todo.fromJson(Map<String, dynamic> json) =>
      _$GetTodos$Query$TodoFromJson(json);

  late String id;

  late String name;

  late bool done;

  String? dueDate;

  String? description;

  late String userId;

  late GetTodos$Query$Todo$User user;

  @override
  List<Object?> get props =>
      [id, name, done, dueDate, description, userId, user];
  @override
  Map<String, dynamic> toJson() => _$GetTodos$Query$TodoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetTodos$Query extends JsonSerializable with EquatableMixin {
  GetTodos$Query();

  factory GetTodos$Query.fromJson(Map<String, dynamic> json) =>
      _$GetTodos$QueryFromJson(json);

  late List<GetTodos$Query$Todo> todos;

  @override
  List<Object?> get props => [todos];
  @override
  Map<String, dynamic> toJson() => _$GetTodos$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateTodo$Mutation$Todo extends JsonSerializable with EquatableMixin {
  CreateTodo$Mutation$Todo();

  factory CreateTodo$Mutation$Todo.fromJson(Map<String, dynamic> json) =>
      _$CreateTodo$Mutation$TodoFromJson(json);

  late String id;

  late String name;

  late bool done;

  String? dueDate;

  String? description;

  late String userId;

  @override
  List<Object?> get props => [id, name, done, dueDate, description, userId];
  @override
  Map<String, dynamic> toJson() => _$CreateTodo$Mutation$TodoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateTodo$Mutation extends JsonSerializable with EquatableMixin {
  CreateTodo$Mutation();

  factory CreateTodo$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateTodo$MutationFromJson(json);

  late CreateTodo$Mutation$Todo createTodo;

  @override
  List<Object?> get props => [createTodo];
  @override
  Map<String, dynamic> toJson() => _$CreateTodo$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetTodosArguments extends JsonSerializable with EquatableMixin {
  GetTodosArguments({required this.userId});

  @override
  factory GetTodosArguments.fromJson(Map<String, dynamic> json) =>
      _$GetTodosArgumentsFromJson(json);

  late String userId;

  @override
  List<Object?> get props => [userId];
  @override
  Map<String, dynamic> toJson() => _$GetTodosArgumentsToJson(this);
}

final GET_TODOS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getTodos'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userId')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'todos'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'userId'),
                  value: VariableNode(name: NameNode(value: 'userId')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'done'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'dueDate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'userId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class GetTodosQuery extends GraphQLQuery<GetTodos$Query, GetTodosArguments> {
  GetTodosQuery({required this.variables});

  @override
  final DocumentNode document = GET_TODOS_QUERY_DOCUMENT;

  @override
  final String operationName = 'getTodos';

  @override
  final GetTodosArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetTodos$Query parse(Map<String, dynamic> json) =>
      GetTodos$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateTodoArguments extends JsonSerializable with EquatableMixin {
  CreateTodoArguments({required this.userId, required this.name});

  @override
  factory CreateTodoArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateTodoArgumentsFromJson(json);

  late String userId;

  late String name;

  @override
  List<Object?> get props => [userId, name];
  @override
  Map<String, dynamic> toJson() => _$CreateTodoArgumentsToJson(this);
}

final CREATE_TODO_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createTodo'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userId')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createTodo'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'userId'),
                        value: VariableNode(name: NameNode(value: 'userId'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: VariableNode(name: NameNode(value: 'name')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'done'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'dueDate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'userId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class CreateTodoMutation
    extends GraphQLQuery<CreateTodo$Mutation, CreateTodoArguments> {
  CreateTodoMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_TODO_MUTATION_DOCUMENT;

  @override
  final String operationName = 'createTodo';

  @override
  final CreateTodoArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateTodo$Mutation parse(Map<String, dynamic> json) =>
      CreateTodo$Mutation.fromJson(json);
}
