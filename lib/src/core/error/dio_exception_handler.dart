import 'package:dio/dio.dart';

sealed class DioExceptionHandler {
  String handlerException(DioException e);
}

class DioExceptionHandlerImpl extends DioExceptionHandler {
  @override
  String handlerException(DioException e) {
    if (e.response == null) return "Unknown error";

    final data = e.response?.data["meta"];

    if (data is Map<String, dynamic>) {
      if (data.containsKey('message') && data['message'] != null) {
        return data['message'].toString();
      } else if (data.containsKey('error')) {
        return data['error'].toString();
      } else {
        return data.toString();
      }
    } else if (data is String) {
      return data;
    } else {
      return "Unexpected error format: ${data.runtimeType}";
    }
  }
}
