import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_in_state.freezed.dart';

@freezed
class LogInState with _$LogInState {
  const factory LogInState.initial() = _Initial;
  const factory LogInState.loading() = _Loading;
  const factory LogInState.success() = _Success;
  const factory LogInState.error(Exception exception) = _Error;
}
