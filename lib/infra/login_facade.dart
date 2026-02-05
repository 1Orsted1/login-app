import 'package:injectable/injectable.dart';
import 'package:my_login/domain/i_login_data_source.dart';
import 'package:my_login/domain/i_login_facade.dart';

@Injectable(as: ILoginFacade)
class LoginFacade implements ILoginFacade {
  LoginFacade(this._source);
  final ILoginDataSource _source;

  @override
  Future<bool> requestLogin() {
    return _source.requestLogin();
  }
}
