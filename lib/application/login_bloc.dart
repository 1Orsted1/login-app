import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_login/domain/i_login_facade.dart';
import 'package:my_login/infra/auth_st.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@lazySingleton
@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(ILoginFacade facade) : super(LoginState.initial()) {
    on<_RequestLogin>((event, emit) async {
      try {
        emit(state.copyWith(isLoading: true));
        final userLogged = await facade.requestLogin(
          user: event.user,
          password: event.passw,
        );
        emit(state.copyWith(isLoading: false, user: userLogged));
      } catch (e) {
        emit(state.copyWith(isLoading: false));
      }
    });

    on<_CheckOfLoggedIn>((event, emit) async {
      try {
        if (state.user != null) {
          await emit.forEach(
            facade.checkIfLogged(),
            onData: (user) {
              print(user);
              return state.copyWith(user: user);
            },
          );
        }
      } catch (e) {
        //emit(state.copyWith(isLoading: false));
      }
    });

    on<_ListenFireUser>((event, emit) async {
      try {
        await emit.forEach(
          facade.checkIfLogged(),
          onData: (user) {
            if (user == null) {
              return state.copyWith(authSt: AuthSt.notLogged, user: user);
            } else {
              return state.copyWith(authSt: AuthSt.logged, user: user);
            }
          },
        );
      } catch (e) {
        //emit(state.copyWith(isLoading: false));
        emit(state.copyWith(authSt: AuthSt.notLogged));
      } finally {
        emit(state.copyWith(isLoading: false));
      }
    });

    on<_LogOut>((event, emit) async {
      try {
        emit(state.copyWith(isLoading: true));
        await facade.logOut();
        emit(state.copyWith(isLoading: false));
      } catch (e) {
        emit(state.copyWith(isLoading: false));
      }
    });

    on<_Register>((event, emit) async {
      try {
        emit(state.copyWith(isLoading: true));
        final userLogged = await facade.register(
          user: event.user,
          password: event.passw,
        );
        emit(state.copyWith(isLoading: false, user: userLogged));
      } catch (e) {
        emit(state.copyWith(isLoading: false));
      }
    });
  }

  @postConstruct
  void listenLoginStatus() {
    add(_ListenFireUser());
  }
}
