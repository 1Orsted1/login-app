import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_login/domain/i_login_facade.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(ILoginFacade facade) : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      try {
        emit(state.copyWith(isLoading: true));
        final canLogin = await facade.requestLogin();
        emit(state.copyWith(isLoading: false, isLoggedIn: canLogin));
      } catch (e) {
        emit(state.copyWith(isLoading: false));
      }
    });
  }
}
