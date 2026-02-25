import 'package:firebase_auth/firebase_auth.dart';

abstract class ILoginDataSource {
  Future<User?> requestLogin({required String user, required String password});
  Stream<User?> checkIfLogged();
  Future<void> logOut();
  Future<User?> register({required String user, required String password});
}
