import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:my_login/domain/i_registration_data_source.dart';

@Injectable(as: IRegistrationDataSource)
class RegistrationDataSourceImpl implements IRegistrationDataSource {
  RegistrationDataSourceImpl(this._firebaseAuth);
  final FirebaseAuth _firebaseAuth;

  @override
  Future<bool> register({
    required String user,
    required String password,
  }) async {
    final res = await _firebaseAuth.createUserWithEmailAndPassword(
      email: user,
      password: password,
    );
    return res.user != null;
  }
}
