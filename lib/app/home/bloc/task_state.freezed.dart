// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successCreatingTask,
    required TResult Function(List<TaskResponseDto> doneTasks)
        successFetchingDoneTasksList,
    required TResult Function(List<TaskResponseDto> tasksInProgress)
        successFetchingTasksInProgressList,
    required TResult Function() successFetchingEmptyList,
    required TResult Function(TaskResponseDto task) successEditingTaskById,
    required TResult Function() successDeletingTask,
    required TResult Function(UpdateTaskRequestDto task, String id)
        successFetchingEditedTask,
    required TResult Function(Exception exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? successCreatingTask,
    TResult? Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult? Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult? Function()? successFetchingEmptyList,
    TResult? Function(TaskResponseDto task)? successEditingTaskById,
    TResult? Function()? successDeletingTask,
    TResult? Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult? Function(Exception exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successCreatingTask,
    TResult Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult Function()? successFetchingEmptyList,
    TResult Function(TaskResponseDto task)? successEditingTaskById,
    TResult Function()? successDeletingTask,
    TResult Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessCreatingTask value) successCreatingTask,
    required TResult Function(_SuccessFetchingDoneTasksList value)
        successFetchingDoneTasksList,
    required TResult Function(_SuccessFetchingTasksInProgressList value)
        successFetchingTasksInProgressList,
    required TResult Function(_SuccessFetchingEmptyList value)
        successFetchingEmptyList,
    required TResult Function(_SuccessEditingTaskById value)
        successEditingTaskById,
    required TResult Function(_SuccessDeletingTask value) successDeletingTask,
    required TResult Function(_SuccessFetchingEditedTask value)
        successFetchingEditedTask,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult? Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult? Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult? Function(_SuccessFetchingEmptyList value)?
        successFetchingEmptyList,
    TResult? Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult? Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult? Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult Function(_SuccessFetchingEmptyList value)? successFetchingEmptyList,
    TResult Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TaskState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successCreatingTask,
    required TResult Function(List<TaskResponseDto> doneTasks)
        successFetchingDoneTasksList,
    required TResult Function(List<TaskResponseDto> tasksInProgress)
        successFetchingTasksInProgressList,
    required TResult Function() successFetchingEmptyList,
    required TResult Function(TaskResponseDto task) successEditingTaskById,
    required TResult Function() successDeletingTask,
    required TResult Function(UpdateTaskRequestDto task, String id)
        successFetchingEditedTask,
    required TResult Function(Exception exception) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? successCreatingTask,
    TResult? Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult? Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult? Function()? successFetchingEmptyList,
    TResult? Function(TaskResponseDto task)? successEditingTaskById,
    TResult? Function()? successDeletingTask,
    TResult? Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult? Function(Exception exception)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successCreatingTask,
    TResult Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult Function()? successFetchingEmptyList,
    TResult Function(TaskResponseDto task)? successEditingTaskById,
    TResult Function()? successDeletingTask,
    TResult Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessCreatingTask value) successCreatingTask,
    required TResult Function(_SuccessFetchingDoneTasksList value)
        successFetchingDoneTasksList,
    required TResult Function(_SuccessFetchingTasksInProgressList value)
        successFetchingTasksInProgressList,
    required TResult Function(_SuccessFetchingEmptyList value)
        successFetchingEmptyList,
    required TResult Function(_SuccessEditingTaskById value)
        successEditingTaskById,
    required TResult Function(_SuccessDeletingTask value) successDeletingTask,
    required TResult Function(_SuccessFetchingEditedTask value)
        successFetchingEditedTask,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult? Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult? Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult? Function(_SuccessFetchingEmptyList value)?
        successFetchingEmptyList,
    TResult? Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult? Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult? Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult Function(_SuccessFetchingEmptyList value)? successFetchingEmptyList,
    TResult Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TaskState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TaskState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successCreatingTask,
    required TResult Function(List<TaskResponseDto> doneTasks)
        successFetchingDoneTasksList,
    required TResult Function(List<TaskResponseDto> tasksInProgress)
        successFetchingTasksInProgressList,
    required TResult Function() successFetchingEmptyList,
    required TResult Function(TaskResponseDto task) successEditingTaskById,
    required TResult Function() successDeletingTask,
    required TResult Function(UpdateTaskRequestDto task, String id)
        successFetchingEditedTask,
    required TResult Function(Exception exception) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? successCreatingTask,
    TResult? Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult? Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult? Function()? successFetchingEmptyList,
    TResult? Function(TaskResponseDto task)? successEditingTaskById,
    TResult? Function()? successDeletingTask,
    TResult? Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult? Function(Exception exception)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successCreatingTask,
    TResult Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult Function()? successFetchingEmptyList,
    TResult Function(TaskResponseDto task)? successEditingTaskById,
    TResult Function()? successDeletingTask,
    TResult Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessCreatingTask value) successCreatingTask,
    required TResult Function(_SuccessFetchingDoneTasksList value)
        successFetchingDoneTasksList,
    required TResult Function(_SuccessFetchingTasksInProgressList value)
        successFetchingTasksInProgressList,
    required TResult Function(_SuccessFetchingEmptyList value)
        successFetchingEmptyList,
    required TResult Function(_SuccessEditingTaskById value)
        successEditingTaskById,
    required TResult Function(_SuccessDeletingTask value) successDeletingTask,
    required TResult Function(_SuccessFetchingEditedTask value)
        successFetchingEditedTask,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult? Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult? Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult? Function(_SuccessFetchingEmptyList value)?
        successFetchingEmptyList,
    TResult? Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult? Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult? Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult Function(_SuccessFetchingEmptyList value)? successFetchingEmptyList,
    TResult Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TaskState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCreatingTaskCopyWith<$Res> {
  factory _$$_SuccessCreatingTaskCopyWith(_$_SuccessCreatingTask value,
          $Res Function(_$_SuccessCreatingTask) then) =
      __$$_SuccessCreatingTaskCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCreatingTaskCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_SuccessCreatingTask>
    implements _$$_SuccessCreatingTaskCopyWith<$Res> {
  __$$_SuccessCreatingTaskCopyWithImpl(_$_SuccessCreatingTask _value,
      $Res Function(_$_SuccessCreatingTask) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SuccessCreatingTask implements _SuccessCreatingTask {
  const _$_SuccessCreatingTask();

  @override
  String toString() {
    return 'TaskState.successCreatingTask()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SuccessCreatingTask);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successCreatingTask,
    required TResult Function(List<TaskResponseDto> doneTasks)
        successFetchingDoneTasksList,
    required TResult Function(List<TaskResponseDto> tasksInProgress)
        successFetchingTasksInProgressList,
    required TResult Function() successFetchingEmptyList,
    required TResult Function(TaskResponseDto task) successEditingTaskById,
    required TResult Function() successDeletingTask,
    required TResult Function(UpdateTaskRequestDto task, String id)
        successFetchingEditedTask,
    required TResult Function(Exception exception) error,
  }) {
    return successCreatingTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? successCreatingTask,
    TResult? Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult? Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult? Function()? successFetchingEmptyList,
    TResult? Function(TaskResponseDto task)? successEditingTaskById,
    TResult? Function()? successDeletingTask,
    TResult? Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult? Function(Exception exception)? error,
  }) {
    return successCreatingTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successCreatingTask,
    TResult Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult Function()? successFetchingEmptyList,
    TResult Function(TaskResponseDto task)? successEditingTaskById,
    TResult Function()? successDeletingTask,
    TResult Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (successCreatingTask != null) {
      return successCreatingTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessCreatingTask value) successCreatingTask,
    required TResult Function(_SuccessFetchingDoneTasksList value)
        successFetchingDoneTasksList,
    required TResult Function(_SuccessFetchingTasksInProgressList value)
        successFetchingTasksInProgressList,
    required TResult Function(_SuccessFetchingEmptyList value)
        successFetchingEmptyList,
    required TResult Function(_SuccessEditingTaskById value)
        successEditingTaskById,
    required TResult Function(_SuccessDeletingTask value) successDeletingTask,
    required TResult Function(_SuccessFetchingEditedTask value)
        successFetchingEditedTask,
    required TResult Function(_Error value) error,
  }) {
    return successCreatingTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult? Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult? Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult? Function(_SuccessFetchingEmptyList value)?
        successFetchingEmptyList,
    TResult? Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult? Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult? Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult? Function(_Error value)? error,
  }) {
    return successCreatingTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult Function(_SuccessFetchingEmptyList value)? successFetchingEmptyList,
    TResult Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successCreatingTask != null) {
      return successCreatingTask(this);
    }
    return orElse();
  }
}

abstract class _SuccessCreatingTask implements TaskState {
  const factory _SuccessCreatingTask() = _$_SuccessCreatingTask;
}

/// @nodoc
abstract class _$$_SuccessFetchingDoneTasksListCopyWith<$Res> {
  factory _$$_SuccessFetchingDoneTasksListCopyWith(
          _$_SuccessFetchingDoneTasksList value,
          $Res Function(_$_SuccessFetchingDoneTasksList) then) =
      __$$_SuccessFetchingDoneTasksListCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskResponseDto> doneTasks});
}

/// @nodoc
class __$$_SuccessFetchingDoneTasksListCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_SuccessFetchingDoneTasksList>
    implements _$$_SuccessFetchingDoneTasksListCopyWith<$Res> {
  __$$_SuccessFetchingDoneTasksListCopyWithImpl(
      _$_SuccessFetchingDoneTasksList _value,
      $Res Function(_$_SuccessFetchingDoneTasksList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doneTasks = null,
  }) {
    return _then(_$_SuccessFetchingDoneTasksList(
      null == doneTasks
          ? _value._doneTasks
          : doneTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskResponseDto>,
    ));
  }
}

/// @nodoc

class _$_SuccessFetchingDoneTasksList implements _SuccessFetchingDoneTasksList {
  const _$_SuccessFetchingDoneTasksList(final List<TaskResponseDto> doneTasks)
      : _doneTasks = doneTasks;

  final List<TaskResponseDto> _doneTasks;
  @override
  List<TaskResponseDto> get doneTasks {
    if (_doneTasks is EqualUnmodifiableListView) return _doneTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doneTasks);
  }

  @override
  String toString() {
    return 'TaskState.successFetchingDoneTasksList(doneTasks: $doneTasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessFetchingDoneTasksList &&
            const DeepCollectionEquality()
                .equals(other._doneTasks, _doneTasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_doneTasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessFetchingDoneTasksListCopyWith<_$_SuccessFetchingDoneTasksList>
      get copyWith => __$$_SuccessFetchingDoneTasksListCopyWithImpl<
          _$_SuccessFetchingDoneTasksList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successCreatingTask,
    required TResult Function(List<TaskResponseDto> doneTasks)
        successFetchingDoneTasksList,
    required TResult Function(List<TaskResponseDto> tasksInProgress)
        successFetchingTasksInProgressList,
    required TResult Function() successFetchingEmptyList,
    required TResult Function(TaskResponseDto task) successEditingTaskById,
    required TResult Function() successDeletingTask,
    required TResult Function(UpdateTaskRequestDto task, String id)
        successFetchingEditedTask,
    required TResult Function(Exception exception) error,
  }) {
    return successFetchingDoneTasksList(doneTasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? successCreatingTask,
    TResult? Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult? Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult? Function()? successFetchingEmptyList,
    TResult? Function(TaskResponseDto task)? successEditingTaskById,
    TResult? Function()? successDeletingTask,
    TResult? Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult? Function(Exception exception)? error,
  }) {
    return successFetchingDoneTasksList?.call(doneTasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successCreatingTask,
    TResult Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult Function()? successFetchingEmptyList,
    TResult Function(TaskResponseDto task)? successEditingTaskById,
    TResult Function()? successDeletingTask,
    TResult Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (successFetchingDoneTasksList != null) {
      return successFetchingDoneTasksList(doneTasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessCreatingTask value) successCreatingTask,
    required TResult Function(_SuccessFetchingDoneTasksList value)
        successFetchingDoneTasksList,
    required TResult Function(_SuccessFetchingTasksInProgressList value)
        successFetchingTasksInProgressList,
    required TResult Function(_SuccessFetchingEmptyList value)
        successFetchingEmptyList,
    required TResult Function(_SuccessEditingTaskById value)
        successEditingTaskById,
    required TResult Function(_SuccessDeletingTask value) successDeletingTask,
    required TResult Function(_SuccessFetchingEditedTask value)
        successFetchingEditedTask,
    required TResult Function(_Error value) error,
  }) {
    return successFetchingDoneTasksList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult? Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult? Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult? Function(_SuccessFetchingEmptyList value)?
        successFetchingEmptyList,
    TResult? Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult? Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult? Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult? Function(_Error value)? error,
  }) {
    return successFetchingDoneTasksList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult Function(_SuccessFetchingEmptyList value)? successFetchingEmptyList,
    TResult Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successFetchingDoneTasksList != null) {
      return successFetchingDoneTasksList(this);
    }
    return orElse();
  }
}

abstract class _SuccessFetchingDoneTasksList implements TaskState {
  const factory _SuccessFetchingDoneTasksList(
      final List<TaskResponseDto> doneTasks) = _$_SuccessFetchingDoneTasksList;

  List<TaskResponseDto> get doneTasks;
  @JsonKey(ignore: true)
  _$$_SuccessFetchingDoneTasksListCopyWith<_$_SuccessFetchingDoneTasksList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessFetchingTasksInProgressListCopyWith<$Res> {
  factory _$$_SuccessFetchingTasksInProgressListCopyWith(
          _$_SuccessFetchingTasksInProgressList value,
          $Res Function(_$_SuccessFetchingTasksInProgressList) then) =
      __$$_SuccessFetchingTasksInProgressListCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskResponseDto> tasksInProgress});
}

/// @nodoc
class __$$_SuccessFetchingTasksInProgressListCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_SuccessFetchingTasksInProgressList>
    implements _$$_SuccessFetchingTasksInProgressListCopyWith<$Res> {
  __$$_SuccessFetchingTasksInProgressListCopyWithImpl(
      _$_SuccessFetchingTasksInProgressList _value,
      $Res Function(_$_SuccessFetchingTasksInProgressList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasksInProgress = null,
  }) {
    return _then(_$_SuccessFetchingTasksInProgressList(
      null == tasksInProgress
          ? _value._tasksInProgress
          : tasksInProgress // ignore: cast_nullable_to_non_nullable
              as List<TaskResponseDto>,
    ));
  }
}

/// @nodoc

class _$_SuccessFetchingTasksInProgressList
    implements _SuccessFetchingTasksInProgressList {
  const _$_SuccessFetchingTasksInProgressList(
      final List<TaskResponseDto> tasksInProgress)
      : _tasksInProgress = tasksInProgress;

  final List<TaskResponseDto> _tasksInProgress;
  @override
  List<TaskResponseDto> get tasksInProgress {
    if (_tasksInProgress is EqualUnmodifiableListView) return _tasksInProgress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasksInProgress);
  }

  @override
  String toString() {
    return 'TaskState.successFetchingTasksInProgressList(tasksInProgress: $tasksInProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessFetchingTasksInProgressList &&
            const DeepCollectionEquality()
                .equals(other._tasksInProgress, _tasksInProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tasksInProgress));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessFetchingTasksInProgressListCopyWith<
          _$_SuccessFetchingTasksInProgressList>
      get copyWith => __$$_SuccessFetchingTasksInProgressListCopyWithImpl<
          _$_SuccessFetchingTasksInProgressList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successCreatingTask,
    required TResult Function(List<TaskResponseDto> doneTasks)
        successFetchingDoneTasksList,
    required TResult Function(List<TaskResponseDto> tasksInProgress)
        successFetchingTasksInProgressList,
    required TResult Function() successFetchingEmptyList,
    required TResult Function(TaskResponseDto task) successEditingTaskById,
    required TResult Function() successDeletingTask,
    required TResult Function(UpdateTaskRequestDto task, String id)
        successFetchingEditedTask,
    required TResult Function(Exception exception) error,
  }) {
    return successFetchingTasksInProgressList(tasksInProgress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? successCreatingTask,
    TResult? Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult? Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult? Function()? successFetchingEmptyList,
    TResult? Function(TaskResponseDto task)? successEditingTaskById,
    TResult? Function()? successDeletingTask,
    TResult? Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult? Function(Exception exception)? error,
  }) {
    return successFetchingTasksInProgressList?.call(tasksInProgress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successCreatingTask,
    TResult Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult Function()? successFetchingEmptyList,
    TResult Function(TaskResponseDto task)? successEditingTaskById,
    TResult Function()? successDeletingTask,
    TResult Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (successFetchingTasksInProgressList != null) {
      return successFetchingTasksInProgressList(tasksInProgress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessCreatingTask value) successCreatingTask,
    required TResult Function(_SuccessFetchingDoneTasksList value)
        successFetchingDoneTasksList,
    required TResult Function(_SuccessFetchingTasksInProgressList value)
        successFetchingTasksInProgressList,
    required TResult Function(_SuccessFetchingEmptyList value)
        successFetchingEmptyList,
    required TResult Function(_SuccessEditingTaskById value)
        successEditingTaskById,
    required TResult Function(_SuccessDeletingTask value) successDeletingTask,
    required TResult Function(_SuccessFetchingEditedTask value)
        successFetchingEditedTask,
    required TResult Function(_Error value) error,
  }) {
    return successFetchingTasksInProgressList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult? Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult? Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult? Function(_SuccessFetchingEmptyList value)?
        successFetchingEmptyList,
    TResult? Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult? Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult? Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult? Function(_Error value)? error,
  }) {
    return successFetchingTasksInProgressList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult Function(_SuccessFetchingEmptyList value)? successFetchingEmptyList,
    TResult Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successFetchingTasksInProgressList != null) {
      return successFetchingTasksInProgressList(this);
    }
    return orElse();
  }
}

abstract class _SuccessFetchingTasksInProgressList implements TaskState {
  const factory _SuccessFetchingTasksInProgressList(
          final List<TaskResponseDto> tasksInProgress) =
      _$_SuccessFetchingTasksInProgressList;

  List<TaskResponseDto> get tasksInProgress;
  @JsonKey(ignore: true)
  _$$_SuccessFetchingTasksInProgressListCopyWith<
          _$_SuccessFetchingTasksInProgressList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessFetchingEmptyListCopyWith<$Res> {
  factory _$$_SuccessFetchingEmptyListCopyWith(
          _$_SuccessFetchingEmptyList value,
          $Res Function(_$_SuccessFetchingEmptyList) then) =
      __$$_SuccessFetchingEmptyListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessFetchingEmptyListCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_SuccessFetchingEmptyList>
    implements _$$_SuccessFetchingEmptyListCopyWith<$Res> {
  __$$_SuccessFetchingEmptyListCopyWithImpl(_$_SuccessFetchingEmptyList _value,
      $Res Function(_$_SuccessFetchingEmptyList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SuccessFetchingEmptyList implements _SuccessFetchingEmptyList {
  const _$_SuccessFetchingEmptyList();

  @override
  String toString() {
    return 'TaskState.successFetchingEmptyList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessFetchingEmptyList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successCreatingTask,
    required TResult Function(List<TaskResponseDto> doneTasks)
        successFetchingDoneTasksList,
    required TResult Function(List<TaskResponseDto> tasksInProgress)
        successFetchingTasksInProgressList,
    required TResult Function() successFetchingEmptyList,
    required TResult Function(TaskResponseDto task) successEditingTaskById,
    required TResult Function() successDeletingTask,
    required TResult Function(UpdateTaskRequestDto task, String id)
        successFetchingEditedTask,
    required TResult Function(Exception exception) error,
  }) {
    return successFetchingEmptyList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? successCreatingTask,
    TResult? Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult? Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult? Function()? successFetchingEmptyList,
    TResult? Function(TaskResponseDto task)? successEditingTaskById,
    TResult? Function()? successDeletingTask,
    TResult? Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult? Function(Exception exception)? error,
  }) {
    return successFetchingEmptyList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successCreatingTask,
    TResult Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult Function()? successFetchingEmptyList,
    TResult Function(TaskResponseDto task)? successEditingTaskById,
    TResult Function()? successDeletingTask,
    TResult Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (successFetchingEmptyList != null) {
      return successFetchingEmptyList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessCreatingTask value) successCreatingTask,
    required TResult Function(_SuccessFetchingDoneTasksList value)
        successFetchingDoneTasksList,
    required TResult Function(_SuccessFetchingTasksInProgressList value)
        successFetchingTasksInProgressList,
    required TResult Function(_SuccessFetchingEmptyList value)
        successFetchingEmptyList,
    required TResult Function(_SuccessEditingTaskById value)
        successEditingTaskById,
    required TResult Function(_SuccessDeletingTask value) successDeletingTask,
    required TResult Function(_SuccessFetchingEditedTask value)
        successFetchingEditedTask,
    required TResult Function(_Error value) error,
  }) {
    return successFetchingEmptyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult? Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult? Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult? Function(_SuccessFetchingEmptyList value)?
        successFetchingEmptyList,
    TResult? Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult? Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult? Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult? Function(_Error value)? error,
  }) {
    return successFetchingEmptyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult Function(_SuccessFetchingEmptyList value)? successFetchingEmptyList,
    TResult Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successFetchingEmptyList != null) {
      return successFetchingEmptyList(this);
    }
    return orElse();
  }
}

abstract class _SuccessFetchingEmptyList implements TaskState {
  const factory _SuccessFetchingEmptyList() = _$_SuccessFetchingEmptyList;
}

/// @nodoc
abstract class _$$_SuccessEditingTaskByIdCopyWith<$Res> {
  factory _$$_SuccessEditingTaskByIdCopyWith(_$_SuccessEditingTaskById value,
          $Res Function(_$_SuccessEditingTaskById) then) =
      __$$_SuccessEditingTaskByIdCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskResponseDto task});

  $TaskResponseDtoCopyWith<$Res> get task;
}

/// @nodoc
class __$$_SuccessEditingTaskByIdCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_SuccessEditingTaskById>
    implements _$$_SuccessEditingTaskByIdCopyWith<$Res> {
  __$$_SuccessEditingTaskByIdCopyWithImpl(_$_SuccessEditingTaskById _value,
      $Res Function(_$_SuccessEditingTaskById) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_SuccessEditingTaskById(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskResponseDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskResponseDtoCopyWith<$Res> get task {
    return $TaskResponseDtoCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_SuccessEditingTaskById implements _SuccessEditingTaskById {
  const _$_SuccessEditingTaskById(this.task);

  @override
  final TaskResponseDto task;

  @override
  String toString() {
    return 'TaskState.successEditingTaskById(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessEditingTaskById &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessEditingTaskByIdCopyWith<_$_SuccessEditingTaskById> get copyWith =>
      __$$_SuccessEditingTaskByIdCopyWithImpl<_$_SuccessEditingTaskById>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successCreatingTask,
    required TResult Function(List<TaskResponseDto> doneTasks)
        successFetchingDoneTasksList,
    required TResult Function(List<TaskResponseDto> tasksInProgress)
        successFetchingTasksInProgressList,
    required TResult Function() successFetchingEmptyList,
    required TResult Function(TaskResponseDto task) successEditingTaskById,
    required TResult Function() successDeletingTask,
    required TResult Function(UpdateTaskRequestDto task, String id)
        successFetchingEditedTask,
    required TResult Function(Exception exception) error,
  }) {
    return successEditingTaskById(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? successCreatingTask,
    TResult? Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult? Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult? Function()? successFetchingEmptyList,
    TResult? Function(TaskResponseDto task)? successEditingTaskById,
    TResult? Function()? successDeletingTask,
    TResult? Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult? Function(Exception exception)? error,
  }) {
    return successEditingTaskById?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successCreatingTask,
    TResult Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult Function()? successFetchingEmptyList,
    TResult Function(TaskResponseDto task)? successEditingTaskById,
    TResult Function()? successDeletingTask,
    TResult Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (successEditingTaskById != null) {
      return successEditingTaskById(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessCreatingTask value) successCreatingTask,
    required TResult Function(_SuccessFetchingDoneTasksList value)
        successFetchingDoneTasksList,
    required TResult Function(_SuccessFetchingTasksInProgressList value)
        successFetchingTasksInProgressList,
    required TResult Function(_SuccessFetchingEmptyList value)
        successFetchingEmptyList,
    required TResult Function(_SuccessEditingTaskById value)
        successEditingTaskById,
    required TResult Function(_SuccessDeletingTask value) successDeletingTask,
    required TResult Function(_SuccessFetchingEditedTask value)
        successFetchingEditedTask,
    required TResult Function(_Error value) error,
  }) {
    return successEditingTaskById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult? Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult? Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult? Function(_SuccessFetchingEmptyList value)?
        successFetchingEmptyList,
    TResult? Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult? Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult? Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult? Function(_Error value)? error,
  }) {
    return successEditingTaskById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult Function(_SuccessFetchingEmptyList value)? successFetchingEmptyList,
    TResult Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successEditingTaskById != null) {
      return successEditingTaskById(this);
    }
    return orElse();
  }
}

abstract class _SuccessEditingTaskById implements TaskState {
  const factory _SuccessEditingTaskById(final TaskResponseDto task) =
      _$_SuccessEditingTaskById;

  TaskResponseDto get task;
  @JsonKey(ignore: true)
  _$$_SuccessEditingTaskByIdCopyWith<_$_SuccessEditingTaskById> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessDeletingTaskCopyWith<$Res> {
  factory _$$_SuccessDeletingTaskCopyWith(_$_SuccessDeletingTask value,
          $Res Function(_$_SuccessDeletingTask) then) =
      __$$_SuccessDeletingTaskCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessDeletingTaskCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_SuccessDeletingTask>
    implements _$$_SuccessDeletingTaskCopyWith<$Res> {
  __$$_SuccessDeletingTaskCopyWithImpl(_$_SuccessDeletingTask _value,
      $Res Function(_$_SuccessDeletingTask) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SuccessDeletingTask implements _SuccessDeletingTask {
  const _$_SuccessDeletingTask();

  @override
  String toString() {
    return 'TaskState.successDeletingTask()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SuccessDeletingTask);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successCreatingTask,
    required TResult Function(List<TaskResponseDto> doneTasks)
        successFetchingDoneTasksList,
    required TResult Function(List<TaskResponseDto> tasksInProgress)
        successFetchingTasksInProgressList,
    required TResult Function() successFetchingEmptyList,
    required TResult Function(TaskResponseDto task) successEditingTaskById,
    required TResult Function() successDeletingTask,
    required TResult Function(UpdateTaskRequestDto task, String id)
        successFetchingEditedTask,
    required TResult Function(Exception exception) error,
  }) {
    return successDeletingTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? successCreatingTask,
    TResult? Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult? Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult? Function()? successFetchingEmptyList,
    TResult? Function(TaskResponseDto task)? successEditingTaskById,
    TResult? Function()? successDeletingTask,
    TResult? Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult? Function(Exception exception)? error,
  }) {
    return successDeletingTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successCreatingTask,
    TResult Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult Function()? successFetchingEmptyList,
    TResult Function(TaskResponseDto task)? successEditingTaskById,
    TResult Function()? successDeletingTask,
    TResult Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (successDeletingTask != null) {
      return successDeletingTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessCreatingTask value) successCreatingTask,
    required TResult Function(_SuccessFetchingDoneTasksList value)
        successFetchingDoneTasksList,
    required TResult Function(_SuccessFetchingTasksInProgressList value)
        successFetchingTasksInProgressList,
    required TResult Function(_SuccessFetchingEmptyList value)
        successFetchingEmptyList,
    required TResult Function(_SuccessEditingTaskById value)
        successEditingTaskById,
    required TResult Function(_SuccessDeletingTask value) successDeletingTask,
    required TResult Function(_SuccessFetchingEditedTask value)
        successFetchingEditedTask,
    required TResult Function(_Error value) error,
  }) {
    return successDeletingTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult? Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult? Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult? Function(_SuccessFetchingEmptyList value)?
        successFetchingEmptyList,
    TResult? Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult? Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult? Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult? Function(_Error value)? error,
  }) {
    return successDeletingTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult Function(_SuccessFetchingEmptyList value)? successFetchingEmptyList,
    TResult Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successDeletingTask != null) {
      return successDeletingTask(this);
    }
    return orElse();
  }
}

abstract class _SuccessDeletingTask implements TaskState {
  const factory _SuccessDeletingTask() = _$_SuccessDeletingTask;
}

/// @nodoc
abstract class _$$_SuccessFetchingEditedTaskCopyWith<$Res> {
  factory _$$_SuccessFetchingEditedTaskCopyWith(
          _$_SuccessFetchingEditedTask value,
          $Res Function(_$_SuccessFetchingEditedTask) then) =
      __$$_SuccessFetchingEditedTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateTaskRequestDto task, String id});

  $UpdateTaskRequestDtoCopyWith<$Res> get task;
}

/// @nodoc
class __$$_SuccessFetchingEditedTaskCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_SuccessFetchingEditedTask>
    implements _$$_SuccessFetchingEditedTaskCopyWith<$Res> {
  __$$_SuccessFetchingEditedTaskCopyWithImpl(
      _$_SuccessFetchingEditedTask _value,
      $Res Function(_$_SuccessFetchingEditedTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? id = null,
  }) {
    return _then(_$_SuccessFetchingEditedTask(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as UpdateTaskRequestDto,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateTaskRequestDtoCopyWith<$Res> get task {
    return $UpdateTaskRequestDtoCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_SuccessFetchingEditedTask implements _SuccessFetchingEditedTask {
  const _$_SuccessFetchingEditedTask(this.task, this.id);

  @override
  final UpdateTaskRequestDto task;
  @override
  final String id;

  @override
  String toString() {
    return 'TaskState.successFetchingEditedTask(task: $task, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessFetchingEditedTask &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessFetchingEditedTaskCopyWith<_$_SuccessFetchingEditedTask>
      get copyWith => __$$_SuccessFetchingEditedTaskCopyWithImpl<
          _$_SuccessFetchingEditedTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successCreatingTask,
    required TResult Function(List<TaskResponseDto> doneTasks)
        successFetchingDoneTasksList,
    required TResult Function(List<TaskResponseDto> tasksInProgress)
        successFetchingTasksInProgressList,
    required TResult Function() successFetchingEmptyList,
    required TResult Function(TaskResponseDto task) successEditingTaskById,
    required TResult Function() successDeletingTask,
    required TResult Function(UpdateTaskRequestDto task, String id)
        successFetchingEditedTask,
    required TResult Function(Exception exception) error,
  }) {
    return successFetchingEditedTask(task, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? successCreatingTask,
    TResult? Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult? Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult? Function()? successFetchingEmptyList,
    TResult? Function(TaskResponseDto task)? successEditingTaskById,
    TResult? Function()? successDeletingTask,
    TResult? Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult? Function(Exception exception)? error,
  }) {
    return successFetchingEditedTask?.call(task, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successCreatingTask,
    TResult Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult Function()? successFetchingEmptyList,
    TResult Function(TaskResponseDto task)? successEditingTaskById,
    TResult Function()? successDeletingTask,
    TResult Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (successFetchingEditedTask != null) {
      return successFetchingEditedTask(task, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessCreatingTask value) successCreatingTask,
    required TResult Function(_SuccessFetchingDoneTasksList value)
        successFetchingDoneTasksList,
    required TResult Function(_SuccessFetchingTasksInProgressList value)
        successFetchingTasksInProgressList,
    required TResult Function(_SuccessFetchingEmptyList value)
        successFetchingEmptyList,
    required TResult Function(_SuccessEditingTaskById value)
        successEditingTaskById,
    required TResult Function(_SuccessDeletingTask value) successDeletingTask,
    required TResult Function(_SuccessFetchingEditedTask value)
        successFetchingEditedTask,
    required TResult Function(_Error value) error,
  }) {
    return successFetchingEditedTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult? Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult? Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult? Function(_SuccessFetchingEmptyList value)?
        successFetchingEmptyList,
    TResult? Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult? Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult? Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult? Function(_Error value)? error,
  }) {
    return successFetchingEditedTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult Function(_SuccessFetchingEmptyList value)? successFetchingEmptyList,
    TResult Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successFetchingEditedTask != null) {
      return successFetchingEditedTask(this);
    }
    return orElse();
  }
}

abstract class _SuccessFetchingEditedTask implements TaskState {
  const factory _SuccessFetchingEditedTask(
          final UpdateTaskRequestDto task, final String id) =
      _$_SuccessFetchingEditedTask;

  UpdateTaskRequestDto get task;
  String get id;
  @JsonKey(ignore: true)
  _$$_SuccessFetchingEditedTaskCopyWith<_$_SuccessFetchingEditedTask>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception exception});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$_Error(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.exception);

  @override
  final Exception exception;

  @override
  String toString() {
    return 'TaskState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() successCreatingTask,
    required TResult Function(List<TaskResponseDto> doneTasks)
        successFetchingDoneTasksList,
    required TResult Function(List<TaskResponseDto> tasksInProgress)
        successFetchingTasksInProgressList,
    required TResult Function() successFetchingEmptyList,
    required TResult Function(TaskResponseDto task) successEditingTaskById,
    required TResult Function() successDeletingTask,
    required TResult Function(UpdateTaskRequestDto task, String id)
        successFetchingEditedTask,
    required TResult Function(Exception exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? successCreatingTask,
    TResult? Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult? Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult? Function()? successFetchingEmptyList,
    TResult? Function(TaskResponseDto task)? successEditingTaskById,
    TResult? Function()? successDeletingTask,
    TResult? Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult? Function(Exception exception)? error,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? successCreatingTask,
    TResult Function(List<TaskResponseDto> doneTasks)?
        successFetchingDoneTasksList,
    TResult Function(List<TaskResponseDto> tasksInProgress)?
        successFetchingTasksInProgressList,
    TResult Function()? successFetchingEmptyList,
    TResult Function(TaskResponseDto task)? successEditingTaskById,
    TResult Function()? successDeletingTask,
    TResult Function(UpdateTaskRequestDto task, String id)?
        successFetchingEditedTask,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessCreatingTask value) successCreatingTask,
    required TResult Function(_SuccessFetchingDoneTasksList value)
        successFetchingDoneTasksList,
    required TResult Function(_SuccessFetchingTasksInProgressList value)
        successFetchingTasksInProgressList,
    required TResult Function(_SuccessFetchingEmptyList value)
        successFetchingEmptyList,
    required TResult Function(_SuccessEditingTaskById value)
        successEditingTaskById,
    required TResult Function(_SuccessDeletingTask value) successDeletingTask,
    required TResult Function(_SuccessFetchingEditedTask value)
        successFetchingEditedTask,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult? Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult? Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult? Function(_SuccessFetchingEmptyList value)?
        successFetchingEmptyList,
    TResult? Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult? Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult? Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessCreatingTask value)? successCreatingTask,
    TResult Function(_SuccessFetchingDoneTasksList value)?
        successFetchingDoneTasksList,
    TResult Function(_SuccessFetchingTasksInProgressList value)?
        successFetchingTasksInProgressList,
    TResult Function(_SuccessFetchingEmptyList value)? successFetchingEmptyList,
    TResult Function(_SuccessEditingTaskById value)? successEditingTaskById,
    TResult Function(_SuccessDeletingTask value)? successDeletingTask,
    TResult Function(_SuccessFetchingEditedTask value)?
        successFetchingEditedTask,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TaskState {
  const factory _Error(final Exception exception) = _$_Error;

  Exception get exception;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
