import 'dart:developer' as dev;
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rentara_property_clone/src/core/api_config/api_url_config.dart';
import 'package:rentara_property_clone/src/core/error/dio_exception_handler.dart';
import 'package:rentara_property_clone/src/core/error/exceptions.dart';
import 'package:rentara_property_clone/src/core/services/local/secure_storage_services.dart';
import 'package:rentara_property_clone/src/core/services/local/session_manager.dart';
import 'package:rentara_property_clone/src/core/services/local/shared_preference_request.dart';
import 'package:rentara_property_clone/src/core/services/remote/dio_cancel_token.dart';
import 'package:rentara_property_clone/src/core/services/remote/duplicate_request_interceptor.dart';

abstract class DioServices {
  Future<Response?> get({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
  });

  Future<Response?> post({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
  });
}

class DioServiceImpl extends DioServices {
  final Dio dio;
  final ApiUrlConfig apiUrlConfig;
  final DioExceptionHandler dioExceptionHandler;
  final DioCancelToken cancelToken;
  final SessionManager sessionManager;
  final SharedPreferenceServices sPrefs;
  final SecureStorageService secureStorage;

  DioServiceImpl({
    required this.dio,
    required this.apiUrlConfig,
    required this.dioExceptionHandler,
    required this.cancelToken,
    required this.sessionManager,
    required this.sPrefs,
    required this.secureStorage,
  }) {
    dio.options = BaseOptions(
      baseUrl: apiUrlConfig.baseUrl,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
    );

    dio.interceptors.addAll([
      InterceptorsWrapper(
        onRequest: (o, h) async {
          if (sessionManager.token != null) {
            o.headers["Authorization"] = "Bearer ${sessionManager.token}";
          }

          return h.next(o);
        },
        onResponse: (r, h) => h.next(r),
        onError: (error, h) async {
          final statusCode = error.response?.statusCode;
          if (statusCode == 401)  {
            await secureStorage.reset();
            await sPrefs.reset();
            await sessionManager.clear();
          }
          return h.next(error);
        },
      ),

      DuplicateRequestInterceptor(),
    ]);
  }

  Options _options(Map<String, dynamic>? header) {
    return Options(headers: header);
  }

  @override
  Future<Response?> get({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
  }) async {
    try {
      return await dio
          .get(path, queryParameters: params, options: _options(headers))
          .timeout(
            const Duration(seconds: 20),
            onTimeout: () {
              final message = "Request timeout after 20 seconds.";
              cancelToken.cancel(message);
              throw ConnectionException(message: message);
            },
          );
    } on DioException catch (e) {
      return await _handleException(e);
    } catch (e) {
      throw GeneralException(message: e.toString());
    }
  }

  @override
  Future<Response?> post({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    Map<String, dynamic>? params,
  }) async {
    try {
      return await dio
          .post(
            path,
            queryParameters: params,
            data: body,
            options: _options(headers),
          )
          .timeout(
            const Duration(seconds: 20),
            onTimeout: () {
              final message = "Request timeout after 20 seconds.";
              cancelToken.cancel(message);
              throw ConnectionException(message: message);
            },
          );
    } on DioException catch (e) {
      return await _handleException(e);
    } catch (e) {
      throw GeneralException(message: e.toString());
    }
  }

  Future<Response<dynamic>?> _handleException(DioException e) async {
    if (e.type == DioExceptionType.cancel && e.error == 'duplicate request') {
      dev.log('❌ DUPLICATE REQUEST ${e.requestOptions.path}', name: 'DIO');
      return null;
    }

    String errorMessage = dioExceptionHandler.handlerException(e);
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      throw ConnectionException(
        message:
            'You have an unstable network, please try again when network stabilizes.',
      );
    } else if (e.type == DioExceptionType.connectionError ||
        (e.type == DioExceptionType.unknown && e.error is SocketException)) {
      throw ConnectionException(
        message: "No internet connection, please try again.",
      );
    } else if (e.type == DioExceptionType.cancel) {
      throw ConnectionException(message: "Connection time out.");
    } else if (e.type == DioExceptionType.unknown) {
      throw GeneralException(
        message: "An unknown error occurred.\n$errorMessage",
      );
    } else {
      throw ServerException(message: errorMessage);
    }
  }
}
