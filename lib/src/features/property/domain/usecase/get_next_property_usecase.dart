import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/features/property/domain/entities/property_response/property_response_entities.dart';
import 'package:rentara_property_clone/src/features/property/domain/repository/property_repository.dart';

class GetNextPropertyUsecase {
  final PropertyRepository _repository;

  GetNextPropertyUsecase(this._repository);

  Future<Either<Failure, PropertyResponseEntities?>> call({
    required String url,
  }) async => await _repository.getNextProperty(url: url);
}
