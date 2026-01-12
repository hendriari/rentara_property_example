import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/features/post_property/domain/entities/post_property_entities.dart';

abstract class PostPropertyRepository {
  Future<Either<Failure, String>> postProperty(PostPropertyEntities data);
}
