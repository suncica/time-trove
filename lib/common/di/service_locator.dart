import 'package:dio/dio.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:time_trove_app/app/home/api/task_api.dart';
import 'package:time_trove_app/app/home/bloc/task_cubit.dart';
import 'package:time_trove_app/app/log_in/api/log_in_api.dart';
import 'package:time_trove_app/app/log_in/bloc/log_in_cubit.dart';
import 'package:time_trove_app/app/sign_up/api/sign_up_api.dart';
import 'package:time_trove_app/app/sign_up/bloc/sign_up_cubit.dart';
import 'package:time_trove_app/common/networking/api_error_handler.dart';
import 'package:time_trove_app/common/networking/dio_manager.dart';
import 'package:time_trove_app/common/networking/interceptors/auth_interceptor.dart';
import 'package:time_trove_app/common/networking/secure_storage.dart';
import 'package:time_trove_app/task_repository.dart';
import 'package:time_trove_app/user_repository.dart';

GetIt locator = GetIt.instance;

Future<void> setupServiceLocator() async {
  await _setupData();
  _setUpRepositories();
  _setupCubits();
}

Future<void> _setupData() async {
  locator.registerLazySingleton(() => const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true)));
  locator.registerFactory<SecureStorage>(() => SecureStorage(locator()));

  locator.registerFactory(() => AuthInterceptor(locator()));
  final loggyDioInterceptor = LoggyDioInterceptor();
  locator.registerLazySingleton<ApiErrorHandler>(() => ApiErrorHandler());

  locator.registerLazySingleton<Dio>(
      () => DioManager.createDioInstance(locator(), locator()));
  locator.registerFactory(() => LogInApi(locator(), locator()));
  locator.registerFactory(() => SignUpApi(locator(), locator()));
  locator.registerFactory(() => TaskApi(locator(), locator()));
}

void _setupCubits() {
  locator.registerFactory<LogInCubit>(() => LogInCubit(locator()));
  locator.registerFactory(() => SignUpCubit(locator()));
  locator.registerFactory(() => TaskCubit(locator()));
}

void _setUpRepositories() {
  locator.registerFactory<UserRepository>(
      () => UserRepository(locator(), locator(), locator()));
  locator.registerFactory<TaskRepository>(() => TaskRepository(locator()));
}
