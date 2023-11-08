import 'package:time_trove_app/app/log_in/api/log_in_api.dart';
import 'package:time_trove_app/app/log_in/model/log_in_dto.dart';
import 'package:time_trove_app/app/sign_up/api/sign_up_api.dart';
import 'package:time_trove_app/app/sign_up/model/sign_up_dto.dart';
import 'package:time_trove_app/common/networking/secure_storage.dart';

class UserRepository {
  final LogInApi _logInApi;
  final SignUpApi _signUpApi;
  final SecureStorage _secureStorage;

  UserRepository(
    this._logInApi,
    this._signUpApi,
    this._secureStorage,
  );

  Future<bool> isUserLoggedIn() async {
    final authToken = await _secureStorage.provideAuthToken();
    return Future.value(authToken.isNotEmpty);
  }

  storeAuthToken(String authToken) async {
    await _secureStorage.storeAuthToken(authToken);
  }

  clearAuthTokens() async {
    await _secureStorage.clearAuthToken();
  }

  Future<void> signUp(SignUpRequestDto signUpRequestDto) async {
    final _ = await _signUpApi.signUp(signUpRequestDto);
    return Future.value();
  }

  logIn(String username, String password) async {
    final logInRequestDto =
        LogInRequestDto(username: username, password: password);

    final response = await _logInApi.logIn(logInRequestDto);

    if (response.accessToken != null) {
      await _secureStorage.storeAuthToken(response.accessToken);
    }
    return response;
  }
}
