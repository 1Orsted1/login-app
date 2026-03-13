part of 'registration_bloc.dart';

@freezed
sealed class RegistrationState with _$RegistrationState {
  const factory RegistrationState({required bool isLoading, String? error}) =
      _RegisterState;

  factory RegistrationState.initial() => RegistrationState(isLoading: false);
}
