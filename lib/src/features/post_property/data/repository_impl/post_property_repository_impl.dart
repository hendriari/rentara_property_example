import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/core/error/failure_mapper.dart';
import 'package:rentara_property_clone/src/features/post_property/data/datasource/post_property_remote_datasource.dart';
import 'package:rentara_property_clone/src/features/post_property/data/mapper/post_property_mapper.dart';
import 'package:rentara_property_clone/src/features/post_property/domain/entities/post_property_entities.dart';
import 'package:rentara_property_clone/src/features/post_property/domain/repository/post_property_repository.dart';

class PostPropertyRepositoryImpl extends PostPropertyRepository {
  final PostPropertyRemoteDatasource _datasource;

  PostPropertyRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, String>> postProperty(
    PostPropertyEntities data,
  ) async {
    try {
      final result = await _datasource.postProperty(data.toDto());
      return Right(result);
    } catch (e) {
      return Left(FailureMapper.map(e));
    }
  }
}
