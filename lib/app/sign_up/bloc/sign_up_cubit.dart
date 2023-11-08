import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:time_trove_app/app/sign_up/bloc/sign_up_state.dart';
import 'package:time_trove_app/app/sign_up/model/sign_up_dto.dart';
import 'package:time_trove_app/user_repository.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._userRepository) : super(const SignUpState.initial());
  final UserRepository _userRepository;

  Future<void> signUp(SignUpRequestDto signUpRequestDto) async {
    try {
      emit(const SignUpState.loading());
      await _userRepository.signUp(signUpRequestDto);
      emit(const SignUpState.success());
    } on Exception catch (exception) {
      emit(SignUpState.error(exception));
    }
  }
}
