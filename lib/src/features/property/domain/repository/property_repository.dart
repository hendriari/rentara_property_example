import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/features/property/domain/entities/property_response/property_response_entities.dart';

abstract class PropertyRepository {
  Future<Either<Failure, PropertyResponseEntities?>> getListProperty({
    required String query,
    int? perPage,
    int? maxPrice,
    int? minPrice,
    String? status,
    String? type,
  });

  Future<Either<Failure, PropertyResponseEntities?>> getNextProperty({
    required String url,
  });

  Future<Either<Failure, List<int>?>> getIdPropertyClustering({
    required double swLat,
    required double swLng,
    required double neLat,
    required double neLng,
    int? limit,
  });

  Future<Either<Failure, PropertyResponseEntities?>> getBulkProperty({
    required List<int>? ids,
    String? viewMode,
    String? type,
    String? status,
    int? perPage,
    double? maxPrice,
    double? minPrice,
  });

  Future<Either<Failure, PropertyResponseEntities?>> getNextBulkProperty({
    required String url,
  });
}
