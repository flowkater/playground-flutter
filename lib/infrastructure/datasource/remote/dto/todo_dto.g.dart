// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoDto _$TodoDtoFromJson(Map<String, dynamic> json) {
  return TodoDto(
    id: json['id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    dueDate: json['dueDate'] as String?,
    done: json['done'] as bool,
    userId: json['userId'] as String,
  );
}

Map<String, dynamic> _$TodoDtoToJson(TodoDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'dueDate': instance.dueDate,
      'done': instance.done,
      'userId': instance.userId,
    };
