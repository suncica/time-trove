import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:time_trove_app/common/constants/app_constants.dart';

class SecureStorage {
  final FlutterSecureStorage _secureStorage;

  SecureStorage(this._secureStorage);

  Future<void> storeAuthToken(String token) async {
    return await _secureStorage.write(
        key: AppConstants.keyAuthToken, value: token);
  }

  Future<String> provideAuthToken() async {
    return await _secureStorage.read(key: AppConstants.keyAuthToken) ?? '';
  }

  Future<void> clearAuthToken() {
    return _secureStorage.delete(key: AppConstants.keyAuthToken);
  }

  Future<void> clearAll() {
    return _secureStorage.deleteAll();
  }
}
