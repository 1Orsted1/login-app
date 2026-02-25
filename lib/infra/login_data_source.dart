import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:my_login/domain/i_login_data_source.dart';

@Injectable(as: ILoginDataSource)
class LoginDataSource implements ILoginDataSource {
  const LoginDataSource(this._firebaseAuth);
  final FirebaseAuth _firebaseAuth;

  @override
  Future<User?> requestLogin({
    required String user,
    required String password,
  }) async {
    final res = await _firebaseAuth.signInWithEmailAndPassword(
      email: user,
      password: password,
    );
    print(res.user);
    return res.user;
  }

  @override
  Stream<User?> checkIfLogged() {
    return _firebaseAuth.userChanges();
  }

  @override
  Future<void> logOut() async {
    return _firebaseAuth.signOut();
  }

  @override
  Future<User?> register({
    required String user,
    required String password,
  }) async {
    final res = await _firebaseAuth.createUserWithEmailAndPassword(
      email: user,
      password: password,
    );
    return res.user;
  }
}
