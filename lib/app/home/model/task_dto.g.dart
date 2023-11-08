// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateTaskRequestDto _$$_CreateTaskRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _$_CreateTaskRequestDto(
      title: json['title'] as String,
      description: json['description'] as String?,
      priority: json['priority'] as String?,
    );

Map<String, dynamic> _$$_CreateTaskRequestDtoToJson(
        _$_CreateTaskRequestDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'priority': instance.priority,
    };

_$_TaskResponseDto _$$_TaskResponseDtoFromJson(Map<String, dynamic> json) =>
    _$_TaskResponseDto(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      done: json['done'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      priority: $enumDecodeNullable(_$PriorityEnumMap, json['priority']),
    );

Map<String, dynamic> _$$_TaskResponseDtoToJson(_$_TaskResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'done': instance.done,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'priority': _$PriorityEnumMap[instance.priority],
    };

const _$PriorityEnumMap = {
  Priority.High: 'High',
  Priority.Medium: 'Medium',
  Priority.Low: 'Low',
};

_$_TaskListResponseDto _$$_TaskListResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _$_TaskListResponseDto(
      items: (json['items'] as List<dynamic>)
          .map((e) => TaskResponseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_TaskListResponseDtoToJson(
        _$_TaskListResponseDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'count': instance.count,
    };

_$_UpdateTaskRequestDto _$$_UpdateTaskRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateTaskRequestDto(
      title: json['title'] as String?,
      description: json['description'] as String?,
      done: json['done'] as bool?,
      priority: json['priority'] as String?,
    );

Map<String, dynamic> _$$_UpdateTaskRequestDtoToJson(
        _$_UpdateTaskRequestDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'done': instance.done,
      'priority': instance.priority,
    };
