import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_login/domain/i_registration_facade.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

@lazySingleton
@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc(IRegistrationFacade facade)
    : super(RegistrationState.initial()) {
    on<_RegisterUser>((event, emit) async {
      try {
        emit(state.copyWith(isLoading: true, error: null));
        await facade.register(user: event.user, password: event.passw);
        emit(state.copyWith(isLoading: false));
      } catch (e) {
        addError(e);
        emit(state.copyWith(error: e.toString()));
      } finally {
        emit(state.copyWith(isLoading: false));
      }
    });
  }
}
