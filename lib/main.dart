import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_login/app.dart';
import 'package:my_login/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await useEmulator();
  runApp(const App());
}

Future<void> useEmulator() async {
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
}
