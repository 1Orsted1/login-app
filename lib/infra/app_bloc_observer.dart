import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/web.dart';

@injectable
class AppBlocObserver extends BlocObserver {
  AppBlocObserver(this.l);
  final Logger l;

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    l.t(
      "Transition from:\n${transition.currentState.toString()}\nto\n${transition.nextState.toString()}",
    );
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    l.t("Bloc Event: ${event.toString()}");
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    l.e("Error ${error.toString()} in ${bloc.toString()}, st: $stackTrace");
    super.onError(bloc, error, stackTrace);
  }
}
