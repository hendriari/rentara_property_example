import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/features/property/domain/repository/property_repository.dart';

class GetLocationClusteringUsecase {
  final PropertyRepository _repository;

  GetLocationClusteringUsecase(this._repository);

  Future<Either<Failure, List<int>?>> getLocationClustering({
    required double swLat,
    required double swLng,
    required double neLat,
    required double neLng,
    int? limit,
  }) async => await _repository.getIdPropertyClustering(
    swLat: swLat,
    swLng: swLng,
    neLat: neLat,
    neLng: neLng,
  );
}
