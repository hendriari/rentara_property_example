import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentara_property_clone/src/features/property/domain/entities/property/property_entities.dart';
import 'package:rentara_property_clone/src/features/property/domain/usecase/get_bulk_property_usecase.dart';
import 'package:rentara_property_clone/src/features/property/domain/usecase/get_location_clustering_usecase.dart';
import 'package:rentara_property_clone/src/features/property/domain/usecase/get_next_bulk_property.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_map/property_map_event.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_map/property_map_state.dart';

class PropertyMapBloc extends Bloc<PropertyMapEvent, PropertyMapState> {
  final GetLocationClusteringUsecase getLocationClusteringUsecase;
  final GetBulkPropertyUsecase getBulkPropertyUsecase;
  final GetNextBulkPropertyUsecase getNextBulkPropertyUsecase;

  PropertyMapBloc({
    required this.getBulkPropertyUsecase,
    required this.getLocationClusteringUsecase,
    required this.getNextBulkPropertyUsecase,
  }) : super(PropertyMapState.init()) {
    on<GetClustering>(_onGetClustering, transformer: restartable());
    on<GetBulkProperty>(_onGetBulkProperty, transformer: restartable());
    on<GetNextBulkProperty>(_onGetNextBulkProperty, transformer: droppable());
  }

  Future<void> _onGetClustering(
    GetClustering event,
    Emitter<PropertyMapState> emit,
  ) async {
    emit(PropertyMapState.loadingGetClustering(property: state.property));

    final result = await getLocationClusteringUsecase.getLocationClustering(
      swLat: event.swLat,
      swLng: event.swLng,
      neLat: event.neLat,
      neLng: event.neLng,
    );

    result.fold(
      (failure) => emit(
        PropertyMapState.failedGetClustering(
          message: failure.message,
          property: state.property,
        ),
      ),
      (ids) {
        emit(PropertyMapState.successGetClustering(property: state.property));

        if (ids != null && ids.isNotEmpty) {
          add(PropertyMapEvent.getBulkProperty(ids: ids));
        }
      },
    );
  }

  Future<void> _onGetBulkProperty(
    GetBulkProperty event,
    Emitter<PropertyMapState> emit,
  ) async {
    emit(PropertyMapState.loadingGetBulkProperty(property: state.property));

    final result = await getBulkPropertyUsecase.call(
      ids: event.ids,
      viewMode: event.viewMode,
      type: event.type,
      status: event.status,
      perPage: event.perPage,
      maxPrice: event.maxPrice,
      minPrice: event.minPrice,
    );

    result.fold(
      (failure) => emit(
        PropertyMapState.failedGetBulkProperty(
          message: failure.message,
          property: state.property,
        ),
      ),
      (data) => emit(PropertyMapState.successGetBulkProperty(property: data)),
    );
  }

  Future<void> _onGetNextBulkProperty(
    GetNextBulkProperty event,
    Emitter<PropertyMapState> emit,
  ) async {
    final currNextUrl = state.property?.nextPage;
    if (currNextUrl == null || currNextUrl.isEmpty) return;

    emit(PropertyMapState.loadingGetNextBulkProperty(property: state.property));

    final result = await getNextBulkPropertyUsecase.call(url: currNextUrl);

    result.fold(
      (failure) => emit(
        PropertyMapState.failedGetNextBulkProperty(
          message: failure.message,
          property: state.property,
        ),
      ),
      (data) {
        final List<PropertyEntities> currProperties = List.from(
          state.property?.data ?? [],
        );
        currProperties.addAll(data?.data ?? []);

        final updatedData = state.property?.copyWith(
          data: currProperties,
          nextPage: data?.nextPage,
        );

        emit(
          PropertyMapState.successGetNextBulkProperty(property: updatedData),
        );
      },
    );
  }
}
