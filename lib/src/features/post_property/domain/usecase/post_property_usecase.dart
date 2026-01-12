import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/features/post_property/domain/entities/post_property_entities.dart';
import 'package:rentara_property_clone/src/features/post_property/domain/repository/post_property_repository.dart';

class PostPropertyUsecase {
  final PostPropertyRepository repository;

  PostPropertyUsecase(this.repository);

  Future<Either<Failure, String>> call(PostPropertyEntities data) {
    return repository.postProperty(data);
  }
}
