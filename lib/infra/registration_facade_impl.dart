import 'package:injectable/injectable.dart';
import 'package:my_login/domain/i_registration_data_source.dart';
import 'package:my_login/domain/i_registration_facade.dart';

@Injectable(as: IRegistrationFacade)
class RegistrationFacadeImpl implements IRegistrationFacade {
  const RegistrationFacadeImpl(this._source);

  final IRegistrationDataSource _source;

  @override
  Future<bool> register({required String user, required String password}) {
    return _source.register(user: user, password: password);
  }
}
