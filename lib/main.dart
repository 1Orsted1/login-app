import 'package:flutter/material.dart';
import 'package:my_login/app.dart';
import 'package:my_login/injection.dart';

void main() {
  configureDependencies();
  runApp(const App());
}
