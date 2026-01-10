// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:rentara_property_clone/src/core/api_config/api_env_config.dart'
    as _i86;
import 'package:rentara_property_clone/src/core/api_config/api_url_config.dart'
    as _i683;
import 'package:rentara_property_clone/src/core/error/dio_exception_handler.dart'
    as _i111;
import 'package:rentara_property_clone/src/core/injector/injector_module.dart'
    as _i835;
import 'package:rentara_property_clone/src/core/services/local/secure_storage_services.dart'
    as _i448;
import 'package:rentara_property_clone/src/core/services/local/shared_preference_request.dart'
    as _i1017;
import 'package:rentara_property_clone/src/core/services/remote/dio_cancel_token.dart'
    as _i525;
import 'package:rentara_property_clone/src/core/services/remote/dio_services.dart'
    as _i612;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectorModule = _$InjectorModule();
    gh.singleton<_i361.Dio>(() => injectorModule.dio);
    gh.singleton<_i558.FlutterSecureStorage>(
      () => injectorModule.secureStorage,
    );
    gh.lazySingleton<_i86.ApiEnvConfig>(() => injectorModule.apiEnvConfig);
    gh.lazySingleton<_i111.DioExceptionHandler>(
      () => injectorModule.dioExceptionHandler,
    );
    gh.lazySingleton<_i525.DioCancelToken>(() => injectorModule.cancelToken);
    gh.lazySingleton<_i1017.SharedPreferenceServices>(
      () => injectorModule.sharedPreferenceServices,
    );
    gh.lazySingleton<_i683.ApiUrlConfig>(
      () => injectorModule.apiUrlConfig(gh<_i86.ApiEnvConfig>()),
    );
    gh.lazySingleton<_i448.SecureStorageService>(
      () =>
          injectorModule.secureStorageService(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i612.DioServices>(
      () => injectorModule.dioService(
        gh<_i361.Dio>(),
        gh<_i683.ApiUrlConfig>(),
        gh<_i111.DioExceptionHandler>(),
        gh<_i525.DioCancelToken>(),
      ),
    );
    return this;
  }
}

class _$InjectorModule extends _i835.InjectorModule {}
