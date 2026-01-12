import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
sealed class Failure with _$Failure {
  factory Failure.server({required String message}) = _ServerFailure;

  factory Failure.connection({required String message}) = _ConnectionFailure;

  factory Failure.general({required String message}) = _GeneralFailure;
}
