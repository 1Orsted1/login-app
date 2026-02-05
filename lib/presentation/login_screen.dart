import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_login/application/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginKey = GlobalKey<FormState>();
  String? usr;
  String? psw;
  late final bloc;

  @override
  void initState() {
    bloc = context.read<LoginBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My login")),
      body: Form(
        key: loginKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value != null && value.isNotEmpty) {
                  return "the user is required";
                }
                return null;
              },
            ),
            TextFormField(
              validator: (value) {
                if (value != null && value.isNotEmpty) {
                  return "the password is required";
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (loginKey.currentState!.validate()) {
                  print(loginKey.toString());
                }

                // bloc.add(LoginEvent.requestLogin(user: loginKey., passw: passw))
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
