import 'dart:io';

import 'package:dio/dio.dart';

import 'package:time_trove_app/common/constants/app_constants.dart';
import 'package:time_trove_app/log_helper.dart';

class ApiErrorHandler {
  TTApiException handle(Object? error, StackTrace? stackTrace) {
    if (error is DioException) {
      if (error.type == DioExceptionType.unknown) {
        if (error.response == null &&
                (error.error as SocketException).osError?.errorCode == 8 ||
            (error.error as SocketException).osError?.errorCode == 7) {
          return NoInternetException();
        }
      }
      final responseData = error.response?.data;

      switch (error.response?.statusCode) {
        case AppConstants.httpStatusCodeUnauthorized:
          return error.requestOptions.path.contains(AppConstants.loginPath)
              ? WrongCredentialsException()
              : AuthorizationException();
        case AppConstants.httpStatusCodeConflict:
          if (responseData is String &&
              responseData == AppConstants.emailAlreadyUsed) {
            return UserAlreadyExistException();
          }
          return TTApiException();
        case AppConstants.httpStatusCodeNotFound:
          // return error.requestOptions.path.contains(AppConstants.signUpPath)
          //     ? UserAlreadyExistException()
          //     :
          return TTApiException();

        default:
          return TTApiException();
      }
    }
    d('[API ERROR] ', error, stackTrace);

    return TTApiException();
  }
}

class TTException implements Exception {}

class TTApiException implements TTException {}

class NoInternetException extends TTApiException {}

class AuthorizationException extends TTApiException {}

class UserAlreadyExistException extends TTApiException {}

class WrongCredentialsException extends AuthorizationException {}
