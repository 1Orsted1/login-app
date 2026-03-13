import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_login/application/auth/login_bloc.dart';
import 'package:my_login/infra/auth_st.dart';
import 'package:my_login/presentation/core/app_router.gr.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final LoginBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = context.read<LoginBloc>();
  }

  void _logout() {
    bloc.add(LoginEvent.logOut());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (p, c) => c.authSt == AuthSt.notLogged,
      listener: (context, state) {
        context.router.replace(LoginRoute());
      },
      child: AutoTabsScaffold(
        routes: const [HomeTabRoute(), ProfileTabRoute()],
        appBarBuilder: (context, tabsRouter) => AppBar(
          title: Text(tabsRouter.activeIndex == 0 ? 'Home' : 'Profile'),
          actions: [
            IconButton(
              icon: const Icon(Icons.exit_to_app_rounded),
              tooltip: 'Logout',
              onPressed: _logout,
            ),
          ],
        ),
        bottomNavigationBuilder: (context, tabsRouter) => NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline_rounded),
              selectedIcon: Icon(Icons.person_rounded),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
