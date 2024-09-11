// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../services/language_service.dart' as _i819;
import 'local_storage.dart' as _i919;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await gh.singletonAsync<_i919.LocalStorage>(
      () {
        final i = _i919.LocalStorageImpl();
        return i.onInitService().then((_) => i);
      },
      preResolve: true,
    );
    gh.singleton<_i819.LanguageService>(
        () => _i819.LanguageService(localStorage: gh<_i919.LocalStorage>()));
    return this;
  }
}
