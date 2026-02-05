// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'application/login_bloc.dart' as _i78;
import 'domain/i_login_data_source.dart' as _i110;
import 'domain/i_login_facade.dart' as _i889;
import 'infra/login_data_source.dart' as _i537;
import 'infra/login_facade.dart' as _i316;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i110.ILoginDataSource>(() => _i537.LoginDataSource());
    gh.factory<_i889.ILoginFacade>(
      () => _i316.LoginFacade(gh<_i110.ILoginDataSource>()),
    );
    gh.factory<_i78.LoginBloc>(() => _i78.LoginBloc(gh<_i889.ILoginFacade>()));
    return this;
  }
}
