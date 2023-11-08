import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_dto.freezed.dart';
part 'task_dto.g.dart';

enum Priority { High, Medium, Low }

@freezed
class CreateTaskRequestDto with _$CreateTaskRequestDto {
  const factory CreateTaskRequestDto({
    required String title,
    String? description,
    String? priority,
  }) = _CreateTaskRequestDto;

  factory CreateTaskRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateTaskRequestDtoFromJson(json);
}

@freezed
class TaskResponseDto with _$TaskResponseDto {
  const factory TaskResponseDto({
    required String id,
    required String title,
    required String description,
    required bool done,
    required String createdAt,
    required String updatedAt,
    required Priority? priority,
  }) = _TaskResponseDto;

  factory TaskResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseDtoFromJson(json);
}

@freezed
class TaskListResponseDto with _$TaskListResponseDto {
  const factory TaskListResponseDto({
    required List<TaskResponseDto> items,
    required int count,
  }) = _TaskListResponseDto;

  factory TaskListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TaskListResponseDtoFromJson(json);
}

@freezed
class UpdateTaskRequestDto with _$UpdateTaskRequestDto {
  const factory UpdateTaskRequestDto({
 String? title,
 String? description,
 bool? done,
 String? priority,

  }) = _UpdateTaskRequestDto;

  factory UpdateTaskRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateTaskRequestDtoFromJson(json);
}