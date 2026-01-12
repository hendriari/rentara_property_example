import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/core/error/failure_mapper.dart';
import 'package:rentara_property_clone/src/core/location/domain/entities/current_location_entities.dart';
import 'package:rentara_property_clone/src/core/location/domain/repository/location_repository.dart';

class LocationRepositoryImpl extends LocationRepository {
  @override
  Future<bool> checkLocationService() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  @override
  Future<Either<Failure, CurrentLocationEntities?>> getCurrentLocation() async {
    try {
      bool isServiceEnabled = await checkLocationService();
      if (!isServiceEnabled) {
        return Left(FailureMapper.map('Layanan lokasi (GPS) tidak aktif.'));
      }

      LocationPermission permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        return Left(FailureMapper.map('Izin lokasi ditolak.'));
      }

      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          distanceFilter: 10,
        ),
      );

      return Right(
        CurrentLocationEntities(
          lat: position.latitude,
          long: position.longitude,
        ),
      );
    } catch (e) {
      return Left(FailureMapper.map(e));
    }
  }
}
