import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:my_login/domain/i_login_data_source.dart';
import 'package:my_login/domain/i_login_facade.dart';

@Injectable(as: ILoginFacade)
class LoginFacade implements ILoginFacade {
  LoginFacade(this._source);
  final ILoginDataSource _source;

  @override
  Future<User?> requestLogin({required String user, required String password}) {
    return _source.requestLogin(user: user, password: password);
  }

  @override
  Stream<User?> checkIfLogged() {
    return _source.checkIfLogged();
  }

  @override
  Future<void> logOut() {
    return _source.logOut();
  }
}
