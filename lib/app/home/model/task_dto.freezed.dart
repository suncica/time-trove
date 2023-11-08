// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateTaskRequestDto _$CreateTaskRequestDtoFromJson(Map<String, dynamic> json) {
  return _CreateTaskRequestDto.fromJson(json);
}

/// @nodoc
mixin _$CreateTaskRequestDto {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get priority => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTaskRequestDtoCopyWith<CreateTaskRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskRequestDtoCopyWith<$Res> {
  factory $CreateTaskRequestDtoCopyWith(CreateTaskRequestDto value,
          $Res Function(CreateTaskRequestDto) then) =
      _$CreateTaskRequestDtoCopyWithImpl<$Res, CreateTaskRequestDto>;
  @useResult
  $Res call({String title, String? description, String? priority});
}

/// @nodoc
class _$CreateTaskRequestDtoCopyWithImpl<$Res,
        $Val extends CreateTaskRequestDto>
    implements $CreateTaskRequestDtoCopyWith<$Res> {
  _$CreateTaskRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? priority = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateTaskRequestDtoCopyWith<$Res>
    implements $CreateTaskRequestDtoCopyWith<$Res> {
  factory _$$_CreateTaskRequestDtoCopyWith(_$_CreateTaskRequestDto value,
          $Res Function(_$_CreateTaskRequestDto) then) =
      __$$_CreateTaskRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? description, String? priority});
}

/// @nodoc
class __$$_CreateTaskRequestDtoCopyWithImpl<$Res>
    extends _$CreateTaskRequestDtoCopyWithImpl<$Res, _$_CreateTaskRequestDto>
    implements _$$_CreateTaskRequestDtoCopyWith<$Res> {
  __$$_CreateTaskRequestDtoCopyWithImpl(_$_CreateTaskRequestDto _value,
      $Res Function(_$_CreateTaskRequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? priority = freezed,
  }) {
    return _then(_$_CreateTaskRequestDto(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateTaskRequestDto implements _CreateTaskRequestDto {
  const _$_CreateTaskRequestDto(
      {required this.title, this.description, this.priority});

  factory _$_CreateTaskRequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreateTaskRequestDtoFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  final String? priority;

  @override
  String toString() {
    return 'CreateTaskRequestDto(title: $title, description: $description, priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTaskRequestDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, priority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateTaskRequestDtoCopyWith<_$_CreateTaskRequestDto> get copyWith =>
      __$$_CreateTaskRequestDtoCopyWithImpl<_$_CreateTaskRequestDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateTaskRequestDtoToJson(
      this,
    );
  }
}

abstract class _CreateTaskRequestDto implements CreateTaskRequestDto {
  const factory _CreateTaskRequestDto(
      {required final String title,
      final String? description,
      final String? priority}) = _$_CreateTaskRequestDto;

  factory _CreateTaskRequestDto.fromJson(Map<String, dynamic> json) =
      _$_CreateTaskRequestDto.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  String? get priority;
  @override
  @JsonKey(ignore: true)
  _$$_CreateTaskRequestDtoCopyWith<_$_CreateTaskRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskResponseDto _$TaskResponseDtoFromJson(Map<String, dynamic> json) {
  return _TaskResponseDto.fromJson(json);
}

/// @nodoc
mixin _$TaskResponseDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  Priority? get priority => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskResponseDtoCopyWith<TaskResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskResponseDtoCopyWith<$Res> {
  factory $TaskResponseDtoCopyWith(
          TaskResponseDto value, $Res Function(TaskResponseDto) then) =
      _$TaskResponseDtoCopyWithImpl<$Res, TaskResponseDto>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      bool done,
      String createdAt,
      String updatedAt,
      Priority? priority});
}

/// @nodoc
class _$TaskResponseDtoCopyWithImpl<$Res, $Val extends TaskResponseDto>
    implements $TaskResponseDtoCopyWith<$Res> {
  _$TaskResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? done = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? priority = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskResponseDtoCopyWith<$Res>
    implements $TaskResponseDtoCopyWith<$Res> {
  factory _$$_TaskResponseDtoCopyWith(
          _$_TaskResponseDto value, $Res Function(_$_TaskResponseDto) then) =
      __$$_TaskResponseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      bool done,
      String createdAt,
      String updatedAt,
      Priority? priority});
}

/// @nodoc
class __$$_TaskResponseDtoCopyWithImpl<$Res>
    extends _$TaskResponseDtoCopyWithImpl<$Res, _$_TaskResponseDto>
    implements _$$_TaskResponseDtoCopyWith<$Res> {
  __$$_TaskResponseDtoCopyWithImpl(
      _$_TaskResponseDto _value, $Res Function(_$_TaskResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? done = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? priority = freezed,
  }) {
    return _then(_$_TaskResponseDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskResponseDto implements _TaskResponseDto {
  const _$_TaskResponseDto(
      {required this.id,
      required this.title,
      required this.description,
      required this.done,
      required this.createdAt,
      required this.updatedAt,
      required this.priority});

  factory _$_TaskResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_TaskResponseDtoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final bool done;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final Priority? priority;

  @override
  String toString() {
    return 'TaskResponseDto(id: $id, title: $title, description: $description, done: $done, createdAt: $createdAt, updatedAt: $updatedAt, priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskResponseDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, done,
      createdAt, updatedAt, priority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskResponseDtoCopyWith<_$_TaskResponseDto> get copyWith =>
      __$$_TaskResponseDtoCopyWithImpl<_$_TaskResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskResponseDtoToJson(
      this,
    );
  }
}

abstract class _TaskResponseDto implements TaskResponseDto {
  const factory _TaskResponseDto(
      {required final String id,
      required final String title,
      required final String description,
      required final bool done,
      required final String createdAt,
      required final String updatedAt,
      required final Priority? priority}) = _$_TaskResponseDto;

  factory _TaskResponseDto.fromJson(Map<String, dynamic> json) =
      _$_TaskResponseDto.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  bool get done;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  Priority? get priority;
  @override
  @JsonKey(ignore: true)
  _$$_TaskResponseDtoCopyWith<_$_TaskResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskListResponseDto _$TaskListResponseDtoFromJson(Map<String, dynamic> json) {
  return _TaskListResponseDto.fromJson(json);
}

/// @nodoc
mixin _$TaskListResponseDto {
  List<TaskResponseDto> get items => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskListResponseDtoCopyWith<TaskListResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListResponseDtoCopyWith<$Res> {
  factory $TaskListResponseDtoCopyWith(
          TaskListResponseDto value, $Res Function(TaskListResponseDto) then) =
      _$TaskListResponseDtoCopyWithImpl<$Res, TaskListResponseDto>;
  @useResult
  $Res call({List<TaskResponseDto> items, int count});
}

/// @nodoc
class _$TaskListResponseDtoCopyWithImpl<$Res, $Val extends TaskListResponseDto>
    implements $TaskListResponseDtoCopyWith<$Res> {
  _$TaskListResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TaskResponseDto>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskListResponseDtoCopyWith<$Res>
    implements $TaskListResponseDtoCopyWith<$Res> {
  factory _$$_TaskListResponseDtoCopyWith(_$_TaskListResponseDto value,
          $Res Function(_$_TaskListResponseDto) then) =
      __$$_TaskListResponseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TaskResponseDto> items, int count});
}

/// @nodoc
class __$$_TaskListResponseDtoCopyWithImpl<$Res>
    extends _$TaskListResponseDtoCopyWithImpl<$Res, _$_TaskListResponseDto>
    implements _$$_TaskListResponseDtoCopyWith<$Res> {
  __$$_TaskListResponseDtoCopyWithImpl(_$_TaskListResponseDto _value,
      $Res Function(_$_TaskListResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? count = null,
  }) {
    return _then(_$_TaskListResponseDto(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TaskResponseDto>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskListResponseDto implements _TaskListResponseDto {
  const _$_TaskListResponseDto(
      {required final List<TaskResponseDto> items, required this.count})
      : _items = items;

  factory _$_TaskListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_TaskListResponseDtoFromJson(json);

  final List<TaskResponseDto> _items;
  @override
  List<TaskResponseDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int count;

  @override
  String toString() {
    return 'TaskListResponseDto(items: $items, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskListResponseDto &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskListResponseDtoCopyWith<_$_TaskListResponseDto> get copyWith =>
      __$$_TaskListResponseDtoCopyWithImpl<_$_TaskListResponseDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskListResponseDtoToJson(
      this,
    );
  }
}

abstract class _TaskListResponseDto implements TaskListResponseDto {
  const factory _TaskListResponseDto(
      {required final List<TaskResponseDto> items,
      required final int count}) = _$_TaskListResponseDto;

  factory _TaskListResponseDto.fromJson(Map<String, dynamic> json) =
      _$_TaskListResponseDto.fromJson;

  @override
  List<TaskResponseDto> get items;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_TaskListResponseDtoCopyWith<_$_TaskListResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateTaskRequestDto _$UpdateTaskRequestDtoFromJson(Map<String, dynamic> json) {
  return _UpdateTaskRequestDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateTaskRequestDto {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get done => throw _privateConstructorUsedError;
  String? get priority => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTaskRequestDtoCopyWith<UpdateTaskRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskRequestDtoCopyWith<$Res> {
  factory $UpdateTaskRequestDtoCopyWith(UpdateTaskRequestDto value,
          $Res Function(UpdateTaskRequestDto) then) =
      _$UpdateTaskRequestDtoCopyWithImpl<$Res, UpdateTaskRequestDto>;
  @useResult
  $Res call({String? title, String? description, bool? done, String? priority});
}

/// @nodoc
class _$UpdateTaskRequestDtoCopyWithImpl<$Res,
        $Val extends UpdateTaskRequestDto>
    implements $UpdateTaskRequestDtoCopyWith<$Res> {
  _$UpdateTaskRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? done = freezed,
    Object? priority = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateTaskRequestDtoCopyWith<$Res>
    implements $UpdateTaskRequestDtoCopyWith<$Res> {
  factory _$$_UpdateTaskRequestDtoCopyWith(_$_UpdateTaskRequestDto value,
          $Res Function(_$_UpdateTaskRequestDto) then) =
      __$$_UpdateTaskRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description, bool? done, String? priority});
}

/// @nodoc
class __$$_UpdateTaskRequestDtoCopyWithImpl<$Res>
    extends _$UpdateTaskRequestDtoCopyWithImpl<$Res, _$_UpdateTaskRequestDto>
    implements _$$_UpdateTaskRequestDtoCopyWith<$Res> {
  __$$_UpdateTaskRequestDtoCopyWithImpl(_$_UpdateTaskRequestDto _value,
      $Res Function(_$_UpdateTaskRequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? done = freezed,
    Object? priority = freezed,
  }) {
    return _then(_$_UpdateTaskRequestDto(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateTaskRequestDto implements _UpdateTaskRequestDto {
  const _$_UpdateTaskRequestDto(
      {this.title, this.description, this.done, this.priority});

  factory _$_UpdateTaskRequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateTaskRequestDtoFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final bool? done;
  @override
  final String? priority;

  @override
  String toString() {
    return 'UpdateTaskRequestDto(title: $title, description: $description, done: $done, priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTaskRequestDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, done, priority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateTaskRequestDtoCopyWith<_$_UpdateTaskRequestDto> get copyWith =>
      __$$_UpdateTaskRequestDtoCopyWithImpl<_$_UpdateTaskRequestDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateTaskRequestDtoToJson(
      this,
    );
  }
}

abstract class _UpdateTaskRequestDto implements UpdateTaskRequestDto {
  const factory _UpdateTaskRequestDto(
      {final String? title,
      final String? description,
      final bool? done,
      final String? priority}) = _$_UpdateTaskRequestDto;

  factory _UpdateTaskRequestDto.fromJson(Map<String, dynamic> json) =
      _$_UpdateTaskRequestDto.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  bool? get done;
  @override
  String? get priority;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateTaskRequestDtoCopyWith<_$_UpdateTaskRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
