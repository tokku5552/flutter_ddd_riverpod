import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isFetching,
    @Default(AuthStatus.login) AuthStatus state,
  }) = _AuthState;
}

enum AuthStatus { login, signUp, verification, session }
