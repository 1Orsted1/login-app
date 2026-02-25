part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    required bool isLoading,
    required bool isLoggedIn,
    required AuthSt authSt,
    User? user,
  }) = _$Initial;

  factory LoginState.initial() =>
      LoginState(isLoading: false, isLoggedIn: false, authSt: AuthSt.initial);
}

//separate concepts login, auth, user/profile
