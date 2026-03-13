abstract class IRegistrationDataSource {
  Future<bool> register({required String user, required String password});
}
