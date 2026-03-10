part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.requestLogin({
    required String user,
    required String passw,
  }) = _RequestLogin;

  const factory LoginEvent.checkIfLogged() = _CheckOfLoggedIn;
  const factory LoginEvent.logOut() = _LogOut;
  const factory LoginEvent.register({
    required String user,
    required String passw,
  }) = _Register;

  const factory LoginEvent.listenFireUser() = _ListenFireUser;

  const factory LoginEvent.errorEvent({required String error}) = _ErrorEvent;
}
