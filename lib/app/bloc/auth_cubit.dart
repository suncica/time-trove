import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:time_trove_app/app/bloc/auth_state.dart';
import 'package:time_trove_app/user_repository.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._userRepository) : super(const AuthState.init());
  final UserRepository _userRepository;

  onInit() {
    emit(const AuthState.loading());
    _checkAuthorization();
  }

  _checkAuthorization() async {
    try {
      if (!(await _userRepository.isUserLoggedIn())) {
        emit(const AuthState.unauthorized());
        return;
      }
      emit(const AuthState.authorized());
    } on Exception {
      emit(const AuthState.unauthorized());
    }
  }
}
