import 'package:time_trove_app/app/home/api/task_api.dart';
import 'package:time_trove_app/app/home/model/task_dto.dart';

class TaskRepository {
  final TaskApi _taskApi;

  TaskRepository(
    this._taskApi,
  );

  Future<TaskResponseDto> createTask(CreateTaskRequestDto task) async {
    return await _taskApi.createTask(task);
  }

  Future<TaskResponseDto> editTask(UpdateTaskRequestDto task, String id) async {
    return await _taskApi.editTask(task, id);
  }

  final List<TaskResponseDto> _fetchedTasks = [];
  final List<TaskResponseDto> _doneTasks = [];
  final List<TaskResponseDto> _inProgressTasks = [];

  Future<List<TaskResponseDto>> fetchAllTasks() async {
    final response = await _taskApi.fetchTasks();
    _fetchedTasks.clear();
    _fetchedTasks.addAll(response.items);
    categorizeTasks();
    return _fetchedTasks;
  }

  List<TaskResponseDto> getDoneTasks() {
    return _doneTasks;
  }

  List<TaskResponseDto> getInProgressTasks() {
    return _inProgressTasks;
  }

  void categorizeTasks() {
    _doneTasks.clear();
    _inProgressTasks.clear();

    for (TaskResponseDto task in _fetchedTasks) {
      if (task.done == true) {
        _doneTasks.add(task);
      } else {
        _inProgressTasks.add(task);
      }
    }
  }

  Future<TaskResponseDto> fetchTaskById(String id) async {
    final fetchTask = await _taskApi.fetchTaskById(id);
    return TaskResponseDto(
        id: id.toString(),
        title: fetchTask.title,
        description: fetchTask.description,
        updatedAt: fetchTask.updatedAt,
        priority: fetchTask.priority,
        createdAt: fetchTask.createdAt,
        done: fetchTask.done);
  }

  Future<void> deleteTaskById(String id) async {
    await _taskApi.deleteTaskById(id);
  }
}
