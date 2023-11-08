import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_trove_app/app/home/bloc/task_state.dart';
import 'package:time_trove_app/app/home/model/task_dto.dart';
import 'package:time_trove_app/task_repository.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit(this._taskRepository) : super(const TaskState.initial());
  final TaskRepository _taskRepository;

  Future<void> createTask(
    String title,
    String? description,
    String? priority,
  ) async {
    try {
      emit(const TaskState.loading());
      final taskDto = CreateTaskRequestDto(
          title: title, description: description, priority: priority);
      await _taskRepository.createTask(taskDto);

      emit(const TaskState.successCreatingTask());
    } on Exception catch (exception) {
      emit(TaskState.error(exception));
    }
  }

  fetchTasksInProgress() async {
    try {
      emit(const TaskState.loading());
      final _ = await _taskRepository.fetchAllTasks();
      final tasksInProgress = _taskRepository.getInProgressTasks();
      final nextStateToEmit = tasksInProgress.isNotEmpty
          ? TaskState.successFetchingTasksInProgressList(tasksInProgress)
          : const TaskState.successFetchingEmptyList();
      emit(nextStateToEmit);
    } on Exception catch (exception) {
      emit(TaskState.error(exception));
    }
  }

  fetchDoneTasks() async {
    try {
      emit(const TaskState.loading());
      final _ = await _taskRepository.fetchAllTasks();
      final doneTasks = _taskRepository.getDoneTasks();
      final stateToEmit = doneTasks.isNotEmpty
          ? TaskState.successFetchingDoneTasksList(doneTasks)
          : const TaskState.successFetchingEmptyList();
      emit(stateToEmit);
    } on Exception catch (exception) {
      emit(TaskState.error(exception));
    }
  }

  fetchTaskById(String id) async {
    emit(const TaskState.loading());
    try {
      final task = await _taskRepository.fetchTaskById(id);
      emit(TaskState.successEditingTaskById(task));
    } on Exception catch (exception) {
      emit(TaskState.error(exception));
    }
  }

  editTask(
      {String? title,
      String? description,
      String? priority,
      bool? done,
      required String id}) async {
    final taskDto = UpdateTaskRequestDto(
        title: title, description: description, priority: priority, done: done);
    emit(const TaskState.loading());
    try {
      await _taskRepository.editTask(taskDto, id);
      emit(TaskState.successFetchingEditedTask(taskDto, id));
    } on Exception catch (exception) {
      emit(TaskState.error(exception));
    }
  }

  deleteTaskById(String id) async {
    emit(const TaskState.loading());
    try {
      await _taskRepository.deleteTaskById(id);
      emit(const TaskState.successDeletingTask());
    } on Exception catch (exception) {
      emit(TaskState.error(exception));
    }
  }
}
