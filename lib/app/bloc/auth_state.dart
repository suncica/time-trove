import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.init() = _Init;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authorized() = _Authorized;
  const factory AuthState.unauthorized() = _Unauthorized;
  const factory AuthState.error(Exception exception) = _Error;
}
