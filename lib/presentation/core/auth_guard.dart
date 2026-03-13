import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:my_login/application/auth/login_bloc.dart';
import 'package:my_login/infra/auth_st.dart';
import 'package:my_login/presentation/core/app_router.gr.dart';

@injectable
class AuthGuard extends AutoRouteGuard {
  AuthGuard(this.loginBloc);
  final LoginBloc loginBloc;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    await loginBloc.stream.firstWhere(
      (state) =>
          (state.authSt == AuthSt.logged || state.authSt == AuthSt.notLogged),
    );
    if (loginBloc.state.authSt == AuthSt.logged) {
      resolver.next(true);
    } else {
      resolver.redirectUntil(
        LoginRoute(
          onResult: (success) {
            resolver.next(success);
          },
        ),
      );
    }
  }
}
