// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_in_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogInRequestDto _$LogInRequestDtoFromJson(Map<String, dynamic> json) {
  return _LogInRequestDto.fromJson(json);
}

/// @nodoc
mixin _$LogInRequestDto {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogInRequestDtoCopyWith<LogInRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInRequestDtoCopyWith<$Res> {
  factory $LogInRequestDtoCopyWith(
          LogInRequestDto value, $Res Function(LogInRequestDto) then) =
      _$LogInRequestDtoCopyWithImpl<$Res, LogInRequestDto>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$LogInRequestDtoCopyWithImpl<$Res, $Val extends LogInRequestDto>
    implements $LogInRequestDtoCopyWith<$Res> {
  _$LogInRequestDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_LogInRequestDtoCopyWith<$Res>
    implements $LogInRequestDtoCopyWith<$Res> {
  factory _$$_LogInRequestDtoCopyWith(
          _$_LogInRequestDto value, $Res Function(_$_LogInRequestDto) then) =
      __$$_LogInRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$_LogInRequestDtoCopyWithImpl<$Res>
    extends _$LogInRequestDtoCopyWithImpl<$Res, _$_LogInRequestDto>
    implements _$$_LogInRequestDtoCopyWith<$Res> {
  __$$_LogInRequestDtoCopyWithImpl(
      _$_LogInRequestDto _value, $Res Function(_$_LogInRequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$_LogInRequestDto(
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
class _$_LogInRequestDto implements _LogInRequestDto {
  const _$_LogInRequestDto({required this.username, required this.password});

  factory _$_LogInRequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_LogInRequestDtoFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LogInRequestDto(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogInRequestDto &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogInRequestDtoCopyWith<_$_LogInRequestDto> get copyWith =>
      __$$_LogInRequestDtoCopyWithImpl<_$_LogInRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogInRequestDtoToJson(
      this,
    );
  }
}

abstract class _LogInRequestDto implements LogInRequestDto {
  const factory _LogInRequestDto(
      {required final String username,
      required final String password}) = _$_LogInRequestDto;

  factory _LogInRequestDto.fromJson(Map<String, dynamic> json) =
      _$_LogInRequestDto.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LogInRequestDtoCopyWith<_$_LogInRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

LogInResponseDto _$LogInResponseDtoFromJson(Map<String, dynamic> json) {
  return _LogInResponseDto.fromJson(json);
}

/// @nodoc
mixin _$LogInResponseDto {
  String get accessToken => throw _privateConstructorUsedError;
  UserDto get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogInResponseDtoCopyWith<LogInResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInResponseDtoCopyWith<$Res> {
  factory $LogInResponseDtoCopyWith(
          LogInResponseDto value, $Res Function(LogInResponseDto) then) =
      _$LogInResponseDtoCopyWithImpl<$Res, LogInResponseDto>;
  @useResult
  $Res call({String accessToken, UserDto user});

  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$LogInResponseDtoCopyWithImpl<$Res, $Val extends LogInResponseDto>
    implements $LogInResponseDtoCopyWith<$Res> {
  _$LogInResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LogInResponseDtoCopyWith<$Res>
    implements $LogInResponseDtoCopyWith<$Res> {
  factory _$$_LogInResponseDtoCopyWith(
          _$_LogInResponseDto value, $Res Function(_$_LogInResponseDto) then) =
      __$$_LogInResponseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, UserDto user});

  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LogInResponseDtoCopyWithImpl<$Res>
    extends _$LogInResponseDtoCopyWithImpl<$Res, _$_LogInResponseDto>
    implements _$$_LogInResponseDtoCopyWith<$Res> {
  __$$_LogInResponseDtoCopyWithImpl(
      _$_LogInResponseDto _value, $Res Function(_$_LogInResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? user = null,
  }) {
    return _then(_$_LogInResponseDto(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogInResponseDto implements _LogInResponseDto {
  const _$_LogInResponseDto({required this.accessToken, required this.user});

  factory _$_LogInResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_LogInResponseDtoFromJson(json);

  @override
  final String accessToken;
  @override
  final UserDto user;

  @override
  String toString() {
    return 'LogInResponseDto(accessToken: $accessToken, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogInResponseDto &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogInResponseDtoCopyWith<_$_LogInResponseDto> get copyWith =>
      __$$_LogInResponseDtoCopyWithImpl<_$_LogInResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogInResponseDtoToJson(
      this,
    );
  }
}

abstract class _LogInResponseDto implements LogInResponseDto {
  const factory _LogInResponseDto(
      {required final String accessToken,
      required final UserDto user}) = _$_LogInResponseDto;

  factory _LogInResponseDto.fromJson(Map<String, dynamic> json) =
      _$_LogInResponseDto.fromJson;

  @override
  String get accessToken;
  @override
  UserDto get user;
  @override
  @JsonKey(ignore: true)
  _$$_LogInResponseDtoCopyWith<_$_LogInResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call({String id, String username});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$_UserDtoCopyWith(
          _$_UserDto value, $Res Function(_$_UserDto) then) =
      __$$_UserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String username});
}

/// @nodoc
class __$$_UserDtoCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$_UserDto>
    implements _$$_UserDtoCopyWith<$Res> {
  __$$_UserDtoCopyWithImpl(_$_UserDto _value, $Res Function(_$_UserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_$_UserDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto implements _UserDto {
  const _$_UserDto({required this.id, required this.username});

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  final String id;
  @override
  final String username;

  @override
  String toString() {
    return 'UserDto(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      __$$_UserDtoCopyWithImpl<_$_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDtoToJson(
      this,
    );
  }
}

abstract class _UserDto implements UserDto {
  const factory _UserDto(
      {required final String id, required final String username}) = _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
