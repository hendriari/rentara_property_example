class ServerException implements Exception {
  final String message;

  ServerException({required this.message});

  @override
  String toString() => message;
}

class ConnectionException implements Exception {
  final String message;

  ConnectionException({required this.message});

  @override
  String toString() => message;
}

class GeneralException implements Exception {
  final String message;

  GeneralException({required this.message});

  @override
  String toString() => message;
}
