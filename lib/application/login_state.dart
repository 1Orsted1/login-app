part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    required bool isLoading,
    required bool isLoggedIn,
  }) = _$Initial;

  factory LoginState.initial() =>
      LoginState(isLoading: false, isLoggedIn: false);
}
