import 'package:dio/dio.dart';

sealed class DioCancelToken {
  void cancel(String reason);
}

class DioCancelTokenImpl extends DioCancelToken {
  final cancelToken = CancelToken();

  @override
  void cancel(String reason) {
    cancelToken.cancel(reason);
  }
}
