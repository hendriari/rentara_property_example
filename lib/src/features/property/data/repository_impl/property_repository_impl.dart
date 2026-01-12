import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/core/error/failure_mapper.dart';
import 'package:rentara_property_clone/src/features/property/data/datasource/properti_remote_datasource.dart';
import 'package:rentara_property_clone/src/features/property/data/mapper/property_response_mapper.dart';
import 'package:rentara_property_clone/src/features/property/domain/entities/property_response/property_response_entities.dart';
import 'package:rentara_property_clone/src/features/property/domain/repository/property_repository.dart';

class PropertyRepositoryImpl extends PropertyRepository {
  final PropertyRemoteDatasource _remoteDatasource;

  PropertyRepositoryImpl(this._remoteDatasource);

  @override
  Future<Either<Failure, PropertyResponseEntities?>> getListProperty({
    required String query,
    int? perPage,
    int? maxPrice,
    int? minPrice,
    String? status,
    String? type,
  }) async {
    try {
      final data = await _remoteDatasource.getListProperty(
        query: query,
        perPage: perPage,
        minPrice: maxPrice,
        maxPrice: maxPrice,
        status: status,
        type: type,
      );

      return Right(data?.toEntity());
    } catch (e) {
      return Left(FailureMapper.map(e));
    }
  }

  @override
  Future<Either<Failure, PropertyResponseEntities?>> getNextProperty({
    required String url,
  }) async {
    try {
      final data = await _remoteDatasource.getNextProperty(url: url);

      return Right(data?.toEntity());
    } catch (e) {
      return Left(FailureMapper.map(e));
    }
  }
}
