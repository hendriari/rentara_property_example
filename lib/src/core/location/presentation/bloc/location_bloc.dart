import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentara_property_clone/src/core/location/domain/usecase/get_current_location_usecase.dart';
import 'package:rentara_property_clone/src/core/location/presentation/bloc/location_event.dart';
import 'package:rentara_property_clone/src/core/location/presentation/bloc/location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final GetCurrentLocationUsecase getCurrentLocationUsecase;

  LocationBloc({required this.getCurrentLocationUsecase})
    : super(const LocationState.initial()) {
    on<LocationEventGetCurrentLocation>(_onGetCurrentLocation);
  }

  Future<void> _onGetCurrentLocation(
    LocationEventGetCurrentLocation event,
    Emitter<LocationState> emit,
  ) async {
    final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);

    if (isLoading) return;

    emit(LocationState.loading());

    final result = await getCurrentLocationUsecase.call();

    result.fold(
      (failure) => emit(LocationState.failed(message: failure.message)),
      (data) {
        if (data != null) {
          emit(LocationState.success(location: data));
        } else {
          emit(LocationState.failed(message: 'Failed to get current location'));
        }
      },
    );
  }
}
