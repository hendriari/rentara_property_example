import 'dart:developer' as dev;

import 'package:flutter_bloc/flutter_bloc.dart';

class RentaraBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    dev.log('🟢 BLoC Created: ${bloc.runtimeType}\n', name: 'BLOC');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    dev.log('📩 ${bloc.runtimeType} Event Added: $event', name: 'BLOC');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    dev.log('🔄 ${bloc.runtimeType} State Changed:', name: 'BLOC');
    dev.log('   Current State: ${change.currentState}', name: 'BLOC');
    dev.log('   Next State: ${change.nextState}\n', name: 'BLOC');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    dev.log('❌ ${bloc.runtimeType} Error: $error\n', name: 'BLOC');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    dev.log('🔴 BLoC Closed: ${bloc.runtimeType}\n', name: 'BLOC');
  }
}
