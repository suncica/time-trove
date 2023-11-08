import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:time_trove_app/app/home/model/task_dto.dart';
part 'task_state.freezed.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = _Initial;
  const factory TaskState.loading() = _Loading;
  const factory TaskState.successCreatingTask() = _SuccessCreatingTask;
  const factory TaskState.successFetchingDoneTasksList(
      List<TaskResponseDto> doneTasks) = _SuccessFetchingDoneTasksList;
  const factory TaskState.successFetchingTasksInProgressList(
          List<TaskResponseDto> tasksInProgress) =
      _SuccessFetchingTasksInProgressList;
  const factory TaskState.successFetchingEmptyList() =
      _SuccessFetchingEmptyList;
  const factory TaskState.successEditingTaskById(TaskResponseDto task) =
      _SuccessEditingTaskById;
  const factory TaskState.successDeletingTask() = _SuccessDeletingTask;
  const factory TaskState.successFetchingEditedTask(
      UpdateTaskRequestDto task, String id) = _SuccessFetchingEditedTask;
  const factory TaskState.error(Exception exception) = _Error;
}
