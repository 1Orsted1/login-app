import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/web.dart';
import 'package:my_login/firebase_options.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<FirebaseApp> get initFireBaseApp =>
      Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  @singleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @singleton
  Logger get logger => Logger(
    printer: PrettyPrinter(
      methodCount: 2, // Number of method calls to be displayed
      errorMethodCount: 8, // Number of method calls if stacktrace is provided
      lineLength: 120, // Width of the output
      colors: false, // Colorful log messages
      printEmojis: true, // Print an emoji for each log message
      dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
    ),
  );
}
