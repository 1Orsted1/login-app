part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    required bool isLoading,
    required bool isLoggedIn,
    required AuthSt authSt,
    String? errorMsg,
    User? user,
  }) = _$Initial;

  factory LoginState.initial() => LoginState(
    isLoading: false,
    isLoggedIn: false,
    authSt: AuthSt.initial,
    errorMsg: null,
  );
}

//separate concepts login, auth, user/profile
