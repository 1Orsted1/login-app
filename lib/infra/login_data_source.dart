import 'package:injectable/injectable.dart';
import 'package:my_login/domain/i_login_data_source.dart';

@Injectable(as: ILoginDataSource)
class LoginDataSource implements ILoginDataSource {
  @override
  Future<bool> requestLogin() {
    throw UnimplementedError();
  }
}
