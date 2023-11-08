import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:time_trove_app/user_repository.dart';
import 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  final UserRepository _userRepository;

  LogInCubit(this._userRepository) : super(const LogInState.initial());

  logIn(String username, String password) async {
    emit(const LogInState.loading());
    try {
      await _userRepository.logIn(username, password);
      emit(const LogInState.success());
    } on Exception catch (exception) {
      emit(LogInState.error(exception));
    }
  }
}
