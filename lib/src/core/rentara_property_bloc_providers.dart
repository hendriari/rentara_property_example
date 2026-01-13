import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentara_property_clone/src/core/injector/injector.dart';
import 'package:rentara_property_clone/src/core/location/presentation/bloc/location_bloc.dart';
import 'package:rentara_property_clone/src/core/permission/presentation/bloc/permission_bloc.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rentara_property_clone/src/features/post_property/presentation/bloc/post_property/post_property_bloc.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property/property_bloc.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_filter/property_filter_bloc.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_map/property_map_bloc.dart';

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
        BlocProvider(
          create: (_) => PostPropertyBloc(
            postPropertyUsecase: injector(),
            mediaServices: injector(),
          ),
        ),
        BlocProvider(
          create: (_) => PropertyMapBloc(
            getBulkPropertyUsecase: injector(),
            getLocationClusteringUsecase: injector(),
            getNextBulkPropertyUsecase: injector(),
          ),
        ),
      ],
      child: child,
    );
