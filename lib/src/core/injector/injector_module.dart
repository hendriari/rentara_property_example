import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:rentara_property_clone/src/core/api_config/api_env_config.dart';
import 'package:rentara_property_clone/src/core/api_config/api_url_config.dart';
import 'package:rentara_property_clone/src/core/error/dio_exception_handler.dart';
import 'package:rentara_property_clone/src/core/services/local/secure_storage_services.dart';
import 'package:rentara_property_clone/src/core/services/local/shared_preference_request.dart';
import 'package:rentara_property_clone/src/core/services/remote/dio_cancel_token.dart';
import 'package:rentara_property_clone/src/core/services/remote/dio_services.dart';

@module
abstract class InjectorModule {
  @singleton
  Dio get dio => Dio();

  @singleton
  FlutterSecureStorage get secureStorage => FlutterSecureStorage();

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
  ) => DioServiceImpl(
    dio: dio,
    apiUrlConfig: urlConfig,
    dioExceptionHandler: dioExceptionHandler,
    cancelToken: cancelToken,
  );

  @lazySingleton
  SharedPreferenceServices get sharedPreferenceServices =>
      SharedPreferenceServicesImpl();

  @lazySingleton
  SecureStorageService secureStorageService(FlutterSecureStorage storage) =>
      SecureStorageServiceImpl(storage);
}
