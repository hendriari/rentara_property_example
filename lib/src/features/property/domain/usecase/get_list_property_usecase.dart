import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/features/property/domain/entities/property_response/property_response_entities.dart';
import 'package:rentara_property_clone/src/features/property/domain/repository/property_repository.dart';

class GetListPropertyUsecase {
  final PropertyRepository _repository;

  GetListPropertyUsecase(this._repository);

  Future<Either<Failure, PropertyResponseEntities?>> call({
    required GetListPropertyParams params,
  }) async => await _repository.getListProperty(
    query: params.query,
    perPage: params.perPage,
    maxPrice: params.maxPrice,
    minPrice: params.minPrice,
    status: params.status,
    type: params.type,
  );
}

class GetListPropertyParams {
  final String query;
  final int? perPage;
  final int? maxPrice;
  final int? minPrice;
  final String? status;
  final String? type;

  GetListPropertyParams({
    required this.query,
    this.perPage,
    this.maxPrice,
    this.minPrice,
    this.status,
    this.type,
  });
}
