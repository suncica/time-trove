import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_in_dto.freezed.dart';
part 'log_in_dto.g.dart';

@freezed
class LogInRequestDto with _$LogInRequestDto {
  const factory LogInRequestDto({
    required String username,
    required String password,
  }) = _LogInRequestDto;

  factory LogInRequestDto.fromJson(Map<String, dynamic> json) =>
      _$LogInRequestDtoFromJson(json);
}

@freezed
class LogInResponseDto with _$LogInResponseDto {
  const factory LogInResponseDto({
    required String accessToken,
    required UserDto user,
  }) = _LogInResponseDto;

  factory LogInResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LogInResponseDtoFromJson(json);
}

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required String username,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
