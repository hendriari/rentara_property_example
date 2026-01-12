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
}
