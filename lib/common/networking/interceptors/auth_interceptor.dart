import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:time_trove_app/common/constants/app_constants.dart';
import 'package:time_trove_app/common/networking/secure_storage.dart';
import 'package:time_trove_app/log_helper.dart';

class AuthInterceptor extends Interceptor {
  final SecureStorage _secureStorage;

  AuthInterceptor(this._secureStorage);

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (isAuthorizationNeeded(options.path)) {
      final authToken = await _secureStorage.provideAuthToken();
      options.headers.addAll(
        <String, String>{AppConstants.keyAuthorization: 'Bearer $authToken'},
      );
      d('Bearer $authToken');
    }

    super.onRequest(options, handler);
  }
}

bool isAuthorizationNeeded(String path) {
  return path != AppConstants.loginPath && path != AppConstants.signUpPath;
}
