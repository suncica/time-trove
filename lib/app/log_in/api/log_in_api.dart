import 'package:dio/dio.dart';

import 'package:time_trove_app/app/log_in/model/log_in_dto.dart';
import 'package:time_trove_app/common/constants/app_constants.dart';
import 'package:time_trove_app/common/networking/api_error_handler.dart';

class LogInApi {
  final Dio _httpClient;
  final ApiErrorHandler _errorHandler;
  final _path = AppConstants.loginPath;

  LogInApi(this._httpClient, this._errorHandler);

  Future<LogInResponseDto> logIn(LogInRequestDto logInDto) async {
    try {
      final response = await _httpClient.post<Map<String, dynamic>>(
        _path,
        data: logInDto.toJson(),
      );
      return LogInResponseDto.fromJson(response.data!);
    } catch (error, stackTrace) {
      throw _errorHandler.handle(error, stackTrace);
    }
  }
}
