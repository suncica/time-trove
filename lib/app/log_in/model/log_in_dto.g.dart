// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_in_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogInRequestDto _$$_LogInRequestDtoFromJson(Map<String, dynamic> json) =>
    _$_LogInRequestDto(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_LogInRequestDtoToJson(_$_LogInRequestDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$_LogInResponseDto _$$_LogInResponseDtoFromJson(Map<String, dynamic> json) =>
    _$_LogInResponseDto(
      accessToken: json['accessToken'] as String,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LogInResponseDtoToJson(_$_LogInResponseDto instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'user': instance.user,
    };

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };
