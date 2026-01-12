import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/core/location/domain/entities/current_location_entities.dart';

abstract class LocationRepository {
  Future<bool> checkLocationService();

  Future<Either<Failure, CurrentLocationEntities?>> getCurrentLocation();
}
