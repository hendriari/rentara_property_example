import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentara_property_clone/src/core/injector/injector.dart';
import 'package:rentara_property_clone/src/core/location/presentation/bloc/location_bloc.dart';
import 'package:rentara_property_clone/src/core/permission/presentation/bloc/permission_bloc.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property/property_bloc.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_filter/property_filter_bloc.dart';

MultiBlocProvider rentaraBlocProvider({required Widget child}) =>
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthBloc(
            loginUsecase: injector(),
            registerUsecase: injector(),
            getCurrentUserDataUsecase: injector(),
            logoutUsecase: injector(),
          ),
        ),
        BlocProvider(
          create: (_) => PermissionBloc(
            requestPermissionUsecase: injector(),
            checkPermissionUsecase: injector(),
            openAppSettingUsecase: injector(),
          ),
        ),
        BlocProvider(
          create: (_) => LocationBloc(getCurrentLocationUsecase: injector()),
        ),
        BlocProvider(create: (_) => PropertyFilterBloc()),
        BlocProvider(
          create: (_) => PropertyBloc(
            getListPropertyUsecase: injector(),
            getNextPropertyUsecase: injector(),
          ),
        ),
      ],
      child: child,
    );
