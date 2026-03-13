// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_core/firebase_core.dart' as _i982;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/web.dart' as _i120;

import 'application/auth/login_bloc.dart' as _i650;
import 'application/registration/registration_bloc.dart' as _i173;
import 'domain/i_login_data_source.dart' as _i110;
import 'domain/i_login_facade.dart' as _i889;
import 'domain/i_registration_data_source.dart' as _i19;
import 'domain/i_registration_facade.dart' as _i18;
import 'infra/app_bloc_observer.dart' as _i1014;
import 'infra/login_data_source.dart' as _i537;
import 'infra/login_facade.dart' as _i316;
import 'infra/register_module.dart' as _i761;
import 'infra/registration_data_source_impl.dart' as _i279;
import 'infra/registration_facade_impl.dart' as _i393;
import 'presentation/core/app_router.dart' as _i668;
import 'presentation/core/auth_guard.dart' as _i272;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i982.FirebaseApp>(
      () => registerModule.initFireBaseApp,
      preResolve: true,
    );
    gh.singleton<_i59.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.singleton<_i120.Logger>(() => registerModule.logger);
    gh.factory<_i1014.AppBlocObserver>(
      () => _i1014.AppBlocObserver(gh<_i120.Logger>()),
    );
    gh.factory<_i19.IRegistrationDataSource>(
      () => _i279.RegistrationDataSourceImpl(gh<_i59.FirebaseAuth>()),
    );
    gh.factory<_i110.ILoginDataSource>(
      () => _i537.LoginDataSource(gh<_i59.FirebaseAuth>()),
    );
    gh.factory<_i18.IRegistrationFacade>(
      () => _i393.RegistrationFacadeImpl(gh<_i19.IRegistrationDataSource>()),
    );
    gh.factory<_i889.ILoginFacade>(
      () => _i316.LoginFacade(gh<_i110.ILoginDataSource>()),
    );
    gh.lazySingleton<_i650.LoginBloc>(
      () => _i650.LoginBloc(gh<_i889.ILoginFacade>())..listenLoginStatus(),
    );
    gh.lazySingleton<_i173.RegistrationBloc>(
      () => _i173.RegistrationBloc(gh<_i18.IRegistrationFacade>()),
    );
    gh.factory<_i272.AuthGuard>(() => _i272.AuthGuard(gh<_i650.LoginBloc>()));
    gh.factory<_i668.AppRouter>(() => _i668.AppRouter(gh<_i272.AuthGuard>()));
    return this;
  }
}

class _$RegisterModule extends _i761.RegisterModule {}
