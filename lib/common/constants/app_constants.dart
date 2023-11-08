class AppConstants {
  static const String baseUrl =
      'https://task-server-lsezakpcoq-ey.a.run.app/api/v1';

  static const String keyAuthorization = 'Authorization';
  static const String keyAuthToken = 'auth';

  static const String signUpPath = '/auth/registration';
  static const String loginPath = '/auth/login';

  static const String createTask = '/tasks';

  static const int httpStatusCodeOK = 200;
  static const int httpStatusCodeCreated = 201;
  static const int httpStatusCodeNotFound = 400;
  static const int httpStatusCodeUnauthorized = 401;
  static const int httpStatusCodeConflict = 409;

  static const String emailAlreadyUsed = 'Email already used';
  static const unknownError = 'Unknown error';
}
