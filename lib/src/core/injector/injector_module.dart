import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:rentara_property_clone/src/core/api_config/api_env_config.dart';
import 'package:rentara_property_clone/src/core/api_config/api_url_config.dart';
import 'package:rentara_property_clone/src/core/error/dio_exception_handler.dart';
import 'package:rentara_property_clone/src/core/permission/data/repository_impl/permission_repository_impl.dart';
import 'package:rentara_property_clone/src/core/permission/domain/repository/permission_repository.dart';
import 'package:rentara_property_clone/src/core/permission/domain/usecase/check_permission_usecase.dart';
import 'package:rentara_property_clone/src/core/permission/domain/usecase/open_app_setting_usecase.dart';
import 'package:rentara_property_clone/src/core/permission/domain/usecase/request_permission_usecase.dart';
import 'package:rentara_property_clone/src/core/services/local/secure_storage_services.dart';
import 'package:rentara_property_clone/src/core/services/local/session_manager.dart';
import 'package:rentara_property_clone/src/core/services/local/shared_preference_request.dart';
import 'package:rentara_property_clone/src/core/services/remote/dio_cancel_token.dart';
import 'package:rentara_property_clone/src/core/services/remote/dio_services.dart';
import 'package:rentara_property_clone/src/core/utils/helper.dart';
import 'package:rentara_property_clone/src/features/auth/data/datasource/auth_local_datasource.dart';
import 'package:rentara_property_clone/src/features/auth/data/datasource/auth_remote_datasource.dart';
import 'package:rentara_property_clone/src/features/auth/data/repository_impl/repository_impl.dart';
import 'package:rentara_property_clone/src/features/auth/domain/repository/auth_repository.dart';
import 'package:rentara_property_clone/src/features/auth/domain/usecase/get_current_user_data_usecase.dart';
import 'package:rentara_property_clone/src/features/auth/domain/usecase/login_usecase.dart';
import 'package:rentara_property_clone/src/features/auth/domain/usecase/logout_usecase.dart';
import 'package:rentara_property_clone/src/features/auth/domain/usecase/register_usecase.dart';

@module
abstract class InjectorModule {
  @singleton
  Dio get dio => Dio();

  @singleton
  FlutterSecureStorage get secureStorage => FlutterSecureStorage();

  @lazySingleton
  SharedPreferenceServices get sharedPreferenceServices =>
      SharedPreferenceServicesImpl();

  @lazySingleton
  SecureStorageService secureStorageService(FlutterSecureStorage storage) =>
      SecureStorageServiceImpl(storage);

  @lazySingleton
  SessionManager sessionManager(SecureStorageService storage) =>
      SessionManager(storage);

  @lazySingleton
  ApiEnvConfig get apiEnvConfig => ApiEnvConfig.fromEnv();

  @lazySingleton
  ApiUrlConfig apiUrlConfig(ApiEnvConfig config) => ApiUrlConfigImpl(config);

  @lazySingleton
  DioExceptionHandler get dioExceptionHandler => DioExceptionHandlerImpl();

  @lazySingleton
  DioCancelToken get cancelToken => DioCancelTokenImpl();

  @lazySingleton
  DioServices dioService(
    Dio dio,
    ApiUrlConfig urlConfig,
    DioExceptionHandler dioExceptionHandler,
    DioCancelToken cancelToken,
    SessionManager sessionManager,
    SharedPreferenceServices sPrefs,
    SecureStorageService secureStorage,
  ) => DioServiceImpl(
    dio: dio,
    apiUrlConfig: urlConfig,
    dioExceptionHandler: dioExceptionHandler,
    cancelToken: cancelToken,
    sessionManager: sessionManager,
    sPrefs: sPrefs,
    secureStorage: secureStorage,
  );

  @lazySingleton
  Helper get helper;

  @lazySingleton
  DeviceInfoPlugin get deviceInfoPlugin => DeviceInfoPlugin();

  @lazySingleton
  PermissionRepository permissionRepository(DeviceInfoPlugin device) =>
      PermissionRepositoryImpl(device);

  @lazySingleton
  CheckPermissionUsecase get checkPermissionUsecase;

  @lazySingleton
  OpenAppSettingUsecase get openAppSettingUsecase;

  @lazySingleton
  RequestPermissionUsecase get requestPermissionUsecase;

  /// AUTH FEATURE
  @lazySingleton
  AuthRemoteDatasource remoteDatasource(
    DioServices services,
    ApiUrlConfig urlConfig,
  ) => AuthRemoteDatasourceImpl(services, urlConfig);

  @lazySingleton
  AuthLocalDatasource localDatasource(SharedPreferenceServices prefs) =>
      AuthLocalDatasourceImpl(prefs);

  @lazySingleton
  AuthRepository authRepository(
    AuthRemoteDatasource remote,
    AuthLocalDatasource local,
    SharedPreferenceServices prefs,
    SessionManager sessionManager,
    SecureStorageService storage,
  ) => AuthRepositoryImpl(remote, local, prefs, sessionManager, storage);

  @lazySingleton
  LoginUsecase get loginUsecase;

  @lazySingleton
  RegisterUsecase get registerUsecase;

  @lazySingleton
  GetCurrentUserDataUsecase get currentUserDataUsecase;

  @lazySingleton
  LogoutUsecase get logoutUsecase;
}
