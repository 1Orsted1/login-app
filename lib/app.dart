import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_login/application/login_bloc.dart';
import 'package:my_login/injection.dart';
import 'package:my_login/presentation/home_screen.dart';
import 'package:my_login/presentation/login_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => getIt<LoginBloc>())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (p, c) => p.isLoggedIn != c.isLoggedIn,
          builder: (context, state) {
            if (state.isLoggedIn) {
              return const HomeScreen();
            } else {
              return const LoginScreen();
            }
          },
        ),
      ),
    );
  }
}
