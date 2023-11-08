import 'package:dio/dio.dart';
import 'package:time_trove_app/common/constants/app_constants.dart';
import 'package:time_trove_app/common/networking/interceptors/auth_interceptor.dart';
import 'package:time_trove_app/common/networking/secure_storage.dart';

class DioManager {
  static Dio createDioInstance(
      AuthInterceptor authInterceptor, SecureStorage secureStorage) {
    final dioBaseOptions = BaseOptions(
      baseUrl: AppConstants.baseUrl,
    );
    final dio = Dio(dioBaseOptions);
    dio.interceptors.add(authInterceptor);
    dio.interceptors.add(InterceptorsWrapper(
      onError: (err, handler) async {
        // check if 401 Unauthorized
        if (err.response?.statusCode ==
                AppConstants.httpStatusCodeUnauthorized &&
            isAuthorizationNeeded(err.requestOptions.path)) {
          // proceed error
          handler.next(err);
        }
      },
    ));
    return dio;
  }
}
