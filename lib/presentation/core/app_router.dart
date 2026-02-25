import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:my_login/presentation/core/app_router.gr.dart';
import 'package:my_login/presentation/core/auth_guard.dart';

@injectable
@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  AppRouter(this.authGuard);

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeRoute.page,
      initial: true,
      guards: [authGuard],
      children: [
        AutoRoute(page: HomeTabRoute.page, initial: true),
        AutoRoute(page: ProfileTabRoute.page),
      ],
    ),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: NoContentRoute.page),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    // optionally add root guards here
  ];

  final AuthGuard authGuard;
}
