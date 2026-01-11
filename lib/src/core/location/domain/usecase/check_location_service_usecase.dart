import 'package:rentara_property_clone/src/core/location/domain/repository/location_repository.dart';

class CheckLocationServiceUsecase {
  final LocationRepository _repository;

  CheckLocationServiceUsecase(this._repository);

  Future<bool> call() async => await _repository.checkLocationService();
}
