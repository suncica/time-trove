import 'package:dio/dio.dart';

import 'package:time_trove_app/app/sign_up/model/sign_up_dto.dart';
import 'package:time_trove_app/common/constants/app_constants.dart';
import 'package:time_trove_app/common/networking/api_error_handler.dart';

class SignUpApi {
  final Dio _httpClient;
  final ApiErrorHandler _errorHandler;
  final _path = AppConstants.signUpPath;

  SignUpApi(this._httpClient, this._errorHandler);

  Future<void> signUp(SignUpRequestDto signUpRequestDto) async {
    try {
      final response = await _httpClient.post<String>(
        _path,
        data: signUpRequestDto.toJson(),
      );
      if (response.statusCode == AppConstants.httpStatusCodeCreated) {
        return Future.value();
      }
    } catch (error, stackTrace) {
      throw _errorHandler.handle(error, stackTrace);
    }
  }
}
