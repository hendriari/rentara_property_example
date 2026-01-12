import 'package:rentara_property_clone/src/core/error/exceptions.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';

abstract class FailureMapper {
  static Failure map(dynamic exception) {
    if (exception is ServerException) {
      return Failure.server(message: exception.message);
    }
    if (exception is ConnectionException) {
      return Failure.connection(message: exception.message);
    }
    if (exception is GeneralException) {
      return Failure.general(message: exception.message);
    }

    return Failure.general(message: exception.toString());
  }
}
