import 'package:flutter/cupertino.dart';

abstract class IRegistrationFacade {
  Future<bool> register({required String user, required String password});
}
