// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpRequestDto _$SignUpRequestDtoFromJson(Map<String, dynamic> json) {
  return _SignUpRequestDto.fromJson(json);
}

/// @nodoc
mixin _$SignUpRequestDto {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpRequestDtoCopyWith<SignUpRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpRequestDtoCopyWith<$Res> {
  factory $SignUpRequestDtoCopyWith(
          SignUpRequestDto value, $Res Function(SignUpRequestDto) then) =
      _$SignUpRequestDtoCopyWithImpl<$Res, SignUpRequestDto>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$SignUpRequestDtoCopyWithImpl<$Res, $Val extends SignUpRequestDto>
    implements $SignUpRequestDtoCopyWith<$Res> {
  _$SignUpRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignUpRequestDtoCopyWith<$Res>
    implements $SignUpRequestDtoCopyWith<$Res> {
  factory _$$_SignUpRequestDtoCopyWith(
          _$_SignUpRequestDto value, $Res Function(_$_SignUpRequestDto) then) =
      __$$_SignUpRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$_SignUpRequestDtoCopyWithImpl<$Res>
    extends _$SignUpRequestDtoCopyWithImpl<$Res, _$_SignUpRequestDto>
    implements _$$_SignUpRequestDtoCopyWith<$Res> {
  __$$_SignUpRequestDtoCopyWithImpl(
      _$_SignUpRequestDto _value, $Res Function(_$_SignUpRequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$_SignUpRequestDto(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpRequestDto implements _SignUpRequestDto {
  _$_SignUpRequestDto({required this.username, required this.password});

  factory _$_SignUpRequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_SignUpRequestDtoFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpRequestDtoCopyWith<_$_SignUpRequestDto> get copyWith =>
      __$$_SignUpRequestDtoCopyWithImpl<_$_SignUpRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignUpRequestDtoToJson(
      this,
    );
  }
}

abstract class _SignUpRequestDto implements SignUpRequestDto {
  factory _SignUpRequestDto(
      {required final String username,
      required final String password}) = _$_SignUpRequestDto;

  factory _SignUpRequestDto.fromJson(Map<String, dynamic> json) =
      _$_SignUpRequestDto.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpRequestDtoCopyWith<_$_SignUpRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
