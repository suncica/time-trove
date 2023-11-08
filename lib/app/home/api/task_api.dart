import 'package:dio/dio.dart';
import 'package:time_trove_app/app/home/model/task_dto.dart';
import 'package:time_trove_app/common/constants/app_constants.dart';
import 'package:time_trove_app/common/networking/api_error_handler.dart';
import 'package:time_trove_app/log_helper.dart';

class TaskApi {
  final Dio _httpClient;
  final ApiErrorHandler _errorHandler;
  String _path = AppConstants.createTask;

  TaskApi(this._httpClient, this._errorHandler);

  Future<TaskResponseDto> createTask(CreateTaskRequestDto task) async {
    try {
      final response = await _httpClient.post<Map<String, dynamic>>(_path,
          data: task.toJson());
      d('task response: ${response.data}');
      return TaskResponseDto.fromJson(response.data!);
    } catch (error, stackTrace) {
      throw _errorHandler.handle(error, stackTrace);
    }
  }

  Future<TaskResponseDto> editTask(UpdateTaskRequestDto task, String id) async {
    try {
      _path = '$_path/$id';
      final response = await _httpClient.patch<Map<String, dynamic>>(_path,
          data: task.toJson());
      d('task response: ${response.data}');
      return Future.value(TaskResponseDto.fromJson(response.data!));
    } catch (error, stackTrace) {
      throw _errorHandler.handle(error, stackTrace);
    }
  }

  Future<TaskListResponseDto> fetchTasks() async {
    try {
      final response = await _httpClient.get<Map<String, dynamic>>(_path);
      return Future.value(TaskListResponseDto.fromJson(response.data!));
    } catch (error, stackTrace) {
      throw _errorHandler.handle(error, stackTrace);
    }
  }

  Future<TaskResponseDto> fetchTaskById(String id) async {
    try {
      _path = '$_path/$id';
      final response = await _httpClient.get<Map<String, dynamic>>(
        _path,
      );
      return Future.value(TaskResponseDto.fromJson(response.data!));
    } catch (error, stackTrace) {
      throw _errorHandler.handle(error, stackTrace);
    }
  }

  Future<void> deleteTaskById(String id) async {
    try {
      _path = '$_path/$id';
      final _ = await _httpClient.delete<String>(
        _path,
      );
      return Future.value();
    } catch (error, stackTrace) {
      throw _errorHandler.handle(error, stackTrace);
    }
  }
}
