import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/core/location/domain/entities/current_location_entities.dart';
import 'package:rentara_property_clone/src/core/location/domain/repository/location_repository.dart';

class GetCurrentLocationUsecase {
  final LocationRepository _repository;

  GetCurrentLocationUsecase(this._repository);

  Future<Either<Failure, CurrentLocationEntities?>> call() async =>
      await _repository.getCurrentLocation();
}
