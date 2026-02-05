part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.requestLogin({
    required String user,
    required String passw,
  }) = _RequestLogin;
}
