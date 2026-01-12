import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentara_property_clone/src/features/property/domain/entities/property/property_entities.dart';
import 'package:rentara_property_clone/src/features/property/domain/usecase/get_list_property_usecase.dart';
import 'package:rentara_property_clone/src/features/property/domain/usecase/get_next_property_usecase.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property/property_event.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property/property_state.dart';
import 'package:rxdart/rxdart.dart';

class PropertyBloc extends Bloc<PropertyEvent, PropertyState> {
  final GetListPropertyUsecase getListPropertyUsecase;
  final GetNextPropertyUsecase getNextPropertyUsecase;

  final _searchSubject = BehaviorSubject<GetListPropertyParams>();
  late final StreamSubscription _subscription;

  PropertyBloc({
    required this.getListPropertyUsecase,
    required this.getNextPropertyUsecase,
  }) : super(PropertyState.init()) {
    on<PropertyEventGetProperty>(_onGetProperty, transformer: droppable());
    on<PropertyEventOnSearchPropertyDebounceInternal>(
      _onSearchDebounceInternal,
    );
    on<PropertyEventReset>(_onReset);
    on<PropertyEventGetNextProperty>(
      _getNextProperty,
      transformer: droppable(),
    );

    _subscription = _searchSubject
        .debounceTime(const Duration(milliseconds: 800))
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

  void _onReset(PropertyEventReset event, Emitter<PropertyState> emit) {
    emit(PropertyState.init());
  }

  Future<void> _getNextProperty(
    PropertyEventGetNextProperty event,
    Emitter<PropertyState> emit,
  ) async {
    final isLoading = state.maybeWhen(
      loadingGetNextProperty: (_) => true,
      orElse: () => false,
    );

    if (isLoading) return;

    final currNextUrl = state.property?.nextPage;
    if (currNextUrl == null || currNextUrl.isEmpty) return;

    emit(PropertyState.loadingGetNextProperty(property: state.property));

    final result = await getNextPropertyUsecase.call(url: currNextUrl);

    result.fold(
      (failure) => emit(
        PropertyState.errorGetNextProperty(
          message: failure.message,
          property: state.property,
        ),
      ),
      (data) {
        var currProperties = List<PropertyEntities>.from(
          state.property?.data ?? [],
        );
        currProperties.addAll(data?.data ?? []);

        final updateData = state.property?.copyWith(
          data: currProperties,
          nextPage: data?.nextPage,
        );

        emit(PropertyState.successGetNextProperty(property: updateData));
      },
    );
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    _searchSubject.close();
    return super.close();
  }
}
