import 'package:dio/dio.dart';

sealed class DioExceptionHandler {
  String handlerException(DioException e);
}

class DioExceptionHandlerImpl extends DioExceptionHandler {
  @override
  String handlerException(DioException e) {
    final responseData = e.response?.data;

    if (responseData is! Map<String, dynamic>) {
      return "Unknown error";
    }

    final meta = responseData['meta'];
    final data = responseData['data'];

    final buffer = StringBuffer();

    if (meta is Map<String, dynamic> && meta['message'] != null) {
      buffer.writeln(meta['message']);
    }

    if (data is Map<String, dynamic>) {
      for (final entry in data.entries) {
        // final field = entry.key;
        final messages = entry.value;

        if (messages is List) {
          for (final msg in messages) {
            buffer.writeln("• $msg");
          }
        }
      }
    }

    return buffer.toString().trim();
  }
}
