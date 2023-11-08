import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_dto.freezed.dart';
part 'sign_up_dto.g.dart';

@unfreezed
class SignUpRequestDto with _$SignUpRequestDto {
  factory SignUpRequestDto({
    required final String username,
    required final String password,
  }) = _SignUpRequestDto;

  factory SignUpRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestDtoFromJson(json);

  @override
  String toString() {
    return 'username: $username, password: $password';
  }
}

