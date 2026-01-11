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
import 'package:rentara_property_clone/src/core/services/local/session_manager.dart'
    as _i585;
import 'package:rentara_property_clone/src/core/services/local/shared_preference_request.dart'
    as _i1017;
import 'package:rentara_property_clone/src/core/services/remote/dio_cancel_token.dart'
    as _i525;
import 'package:rentara_property_clone/src/core/services/remote/dio_services.dart'
    as _i612;
import 'package:rentara_property_clone/src/core/utils/helper.dart' as _i554;
import 'package:rentara_property_clone/src/features/auth/data/datasource/auth_local_datasource.dart'
    as _i647;
import 'package:rentara_property_clone/src/features/auth/data/datasource/auth_remote_datasource.dart'
    as _i557;
import 'package:rentara_property_clone/src/features/auth/domain/repository/auth_repository.dart'
    as _i1044;
import 'package:rentara_property_clone/src/features/auth/domain/usecase/get_current_user_data_usecase.dart'
    as _i721;
import 'package:rentara_property_clone/src/features/auth/domain/usecase/login_usecase.dart'
    as _i216;
import 'package:rentara_property_clone/src/features/auth/domain/usecase/logout_usecase.dart'
    as _i136;
import 'package:rentara_property_clone/src/features/auth/domain/usecase/register_usecase.dart'
    as _i1042;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectorModule = _$InjectorModule(this);
    gh.singleton<_i361.Dio>(() => injectorModule.dio);
    gh.singleton<_i558.FlutterSecureStorage>(
      () => injectorModule.secureStorage,
    );
    gh.lazySingleton<_i1017.SharedPreferenceServices>(
      () => injectorModule.sharedPreferenceServices,
    );
    gh.lazySingleton<_i86.ApiEnvConfig>(() => injectorModule.apiEnvConfig);
    gh.lazySingleton<_i111.DioExceptionHandler>(
      () => injectorModule.dioExceptionHandler,
    );
    gh.lazySingleton<_i525.DioCancelToken>(() => injectorModule.cancelToken);
    gh.lazySingleton<_i554.Helper>(() => injectorModule.helper);
    gh.lazySingleton<_i683.ApiUrlConfig>(
      () => injectorModule.apiUrlConfig(gh<_i86.ApiEnvConfig>()),
    );
    gh.lazySingleton<_i448.SecureStorageService>(
      () =>
          injectorModule.secureStorageService(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i585.SessionManager>(
      () => injectorModule.sessionManager(gh<_i448.SecureStorageService>()),
    );
    gh.lazySingleton<_i612.DioServices>(
      () => injectorModule.dioService(
        gh<_i361.Dio>(),
        gh<_i683.ApiUrlConfig>(),
        gh<_i111.DioExceptionHandler>(),
        gh<_i525.DioCancelToken>(),
        gh<_i585.SessionManager>(),
        gh<_i1017.SharedPreferenceServices>(),
        gh<_i448.SecureStorageService>(),
      ),
    );
    gh.lazySingleton<_i647.AuthLocalDatasource>(
      () =>
          injectorModule.localDatasource(gh<_i1017.SharedPreferenceServices>()),
    );
    gh.lazySingleton<_i557.AuthRemoteDatasource>(
      () => injectorModule.remoteDatasource(
        gh<_i612.DioServices>(),
        gh<_i683.ApiUrlConfig>(),
      ),
    );
    gh.lazySingleton<_i1044.AuthRepository>(
      () => injectorModule.authRepository(
        gh<_i557.AuthRemoteDatasource>(),
        gh<_i647.AuthLocalDatasource>(),
        gh<_i1017.SharedPreferenceServices>(),
        gh<_i585.SessionManager>(),
        gh<_i448.SecureStorageService>(),
      ),
    );
    gh.lazySingleton<_i216.LoginUsecase>(() => injectorModule.loginUsecase);
    gh.lazySingleton<_i1042.RegisterUsecase>(
      () => injectorModule.registerUsecase,
    );
    gh.lazySingleton<_i721.GetCurrentUserDataUsecase>(
      () => injectorModule.currentUserDataUsecase,
    );
    gh.lazySingleton<_i136.LogoutUsecase>(() => injectorModule.logoutUsecase);
    return this;
  }
}

class _$InjectorModule extends _i835.InjectorModule {
  _$InjectorModule(this._getIt);

  final _i174.GetIt _getIt;

  @override
  _i554.Helper get helper => _i554.Helper();

  @override
  _i216.LoginUsecase get loginUsecase =>
      _i216.LoginUsecase(_getIt<_i1044.AuthRepository>());

  @override
  _i1042.RegisterUsecase get registerUsecase =>
      _i1042.RegisterUsecase(_getIt<_i1044.AuthRepository>());

  @override
  _i721.GetCurrentUserDataUsecase get currentUserDataUsecase =>
      _i721.GetCurrentUserDataUsecase(_getIt<_i1044.AuthRepository>());

  @override
  _i136.LogoutUsecase get logoutUsecase =>
      _i136.LogoutUsecase(_getIt<_i1044.AuthRepository>());
}
