import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:my_login/firebase_options.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<FirebaseApp> get initFireBaseApp =>
      Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  @singleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
}
