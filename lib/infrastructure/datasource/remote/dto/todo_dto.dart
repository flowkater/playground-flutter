import 'package:json_annotation/json_annotation.dart';
import 'package:playground_todo/domain/todo/todo.dart';

part 'todo_dto.g.dart';

@JsonSerializable()
class TodoDto {
  String id;
  String name;
  String description;
  String? dueDate;
  bool done;
  String userId;

  TodoDto(
      {required this.id,
      required this.name,
      required this.description,
      this.dueDate,
      required this.done,
      required this.userId});

  factory TodoDto.fromJson(Map<String, dynamic> json) =>
      _$TodoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TodoDtoToJson(this);

  Todo toDomain() {
    return Todo(
        id: int.parse(id),
        name: name,
        description: description,
        userId: int.parse(userId),
        done: done,
        dueDate: dueDate);
  }
}
