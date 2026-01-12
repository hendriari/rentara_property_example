import 'package:dio/dio.dart';

class DuplicateRequestInterceptor extends Interceptor {
  final _activeRequest = <String>{};

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final key = "${options.method}-${options.path}-${options.data.hashCode}";

    if (_activeRequest.contains(key)) {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: "Duplicate Request",
          type: DioExceptionType.cancel,
        ),
      );
    }

    _activeRequest.add(key);
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final key =
        "${response.requestOptions.method}-${response.requestOptions.path}-${response.requestOptions.data.hashCode}";

    _activeRequest.remove(key);

    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final key =
        "${err.requestOptions.method}-${err.requestOptions.path}-${err.requestOptions.data.hashCode}";

    _activeRequest.remove(key);
    super.onError(err, handler);
  }
}
