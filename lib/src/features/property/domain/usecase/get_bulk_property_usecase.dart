import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/features/property/domain/entities/property_response/property_response_entities.dart';
import 'package:rentara_property_clone/src/features/property/domain/repository/property_repository.dart';

class GetBulkPropertyUsecase {
  final PropertyRepository _repository;

  GetBulkPropertyUsecase(this._repository);

  Future<Either<Failure, PropertyResponseEntities?>> call({
    required List<int>? ids,
    String? viewMode,
    String? type,
    String? status,
    int? perPage,
    int? maxPrice,
    int? minPrice,
  }) async => await _repository.getBulkProperty(
    ids: ids,
    viewMode: viewMode,
    type: type,
    status: status,
    perPage: perPage,
    maxPrice: maxPrice,
    minPrice: minPrice,
  );
}
