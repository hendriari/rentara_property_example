import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentara_property_clone/src/features/property/domain/usecase/get_list_property_usecase.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property/property_event.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property/property_state.dart';
import 'package:rxdart/rxdart.dart';

class PropertyBloc extends Bloc<PropertyEvent, PropertyState> {
  final GetListPropertyUsecase getListPropertyUsecase;
  final _searchSubject = BehaviorSubject<GetListPropertyParams>();
  late final StreamSubscription _subscription;

  PropertyBloc({required this.getListPropertyUsecase})
    : super(PropertyState.init()) {
    on<PropertyEventGetProperty>(_onGetProperty);
    on<PropertyEventOnSearchPropertyDebounceInternal>(
      _onSearchDebounceInternal,
    );

    _subscription = _searchSubject
        .debounceTime(const Duration(milliseconds: 500))
        .distinct(
          (prev, curr) =>
              prev.query == curr.query &&
              prev.type == curr.type &&
              prev.status == curr.status,
        )
        .switchMap((params) {
          return Stream.fromFuture(getListPropertyUsecase.call(params: params));
        })
        .listen((result) {
          add(PropertyEvent.onSearchPropertyDebounceInternal(result: result));
        });
  }

  void _onGetProperty(
    PropertyEventGetProperty event,
    Emitter<PropertyState> emit,
  ) {
    emit(PropertyState.loadingGetProperty(property: state.property));

    _searchSubject.add(
      GetListPropertyParams(
        query: event.query,
        perPage: event.perPage ?? 20,
        maxPrice: event.maxPrice,
        minPrice: event.minPrice,
        status: event.status,
        type: event.type,
      ),
    );
  }

  void _onSearchDebounceInternal(
    PropertyEventOnSearchPropertyDebounceInternal event,
    Emitter<PropertyState> emit,
  ) {
    event.result.fold(
      (failure) => emit(
        PropertyState.errorGetProperty(
          message: failure.message,
          property: state.property,
        ),
      ),
      (data) => emit(PropertyState.successGetProperty(property: data)),
    );
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    _searchSubject.close();
    return super.close();
  }
}
