import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_filter/property_filter_event.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_filter/property_filter_state.dart';

class PropertyFilterBloc
    extends Bloc<PropertyFilterEvent, PropertyFilterState> {
  PropertyFilterBloc() : super(PropertyFilterState.initial()) {
    on<PropertyFilterUpdateStatusEvent>(_onUpdateStatus);
    on<PropertyFilterUpdateLocationEvent>(_onUpdateLocation);
    on<PropertyFilterUpdateTypeEvent>(_onUpdateType);
    on<PropertyFilterUpdatePriceEvent>(_onUpdatePrice);
    on<PropertyFilterResetEvent>(_reset);
  }

  void _onUpdateStatus(
    PropertyFilterUpdateStatusEvent event,
    Emitter<PropertyFilterState> emit,
  ) {
    emit(
      PropertyFilterState.updatedFilter(
        status: event.status,
        location: state.location,
        type: state.type,
        minPrice: state.minPrice,
        maxPrice: state.maxPrice,
      ),
    );
  }

  void _onUpdateLocation(
    PropertyFilterUpdateLocationEvent event,
    Emitter<PropertyFilterState> emit,
  ) {
    emit(
      PropertyFilterState.updatedFilter(
        status: state.status,
        location: event.location,
        type: state.type,
        minPrice: state.minPrice,
        maxPrice: state.maxPrice,
      ),
    );
  }

  void _onUpdateType(
    PropertyFilterUpdateTypeEvent event,
    Emitter<PropertyFilterState> emit,
  ) {
    emit(
      PropertyFilterState.updatedFilter(
        status: state.status,
        location: state.location,
        type: event.type,
        minPrice: state.minPrice,
        maxPrice: state.maxPrice,
      ),
    );
  }

  void _onUpdatePrice(
    PropertyFilterUpdatePriceEvent event,
    Emitter<PropertyFilterState> emit,
  ) {
    emit(
      PropertyFilterState.updatedFilter(
        status: state.status,
        location: state.location,
        type: state.type,
        minPrice: event.minPrice,
        maxPrice: event.maxPrice,
      ),
    );
  }

  void _reset(
    PropertyFilterResetEvent event,
    Emitter<PropertyFilterState> emit,
  ) {
    emit(PropertyFilterState.resetFilter());
  }
}
