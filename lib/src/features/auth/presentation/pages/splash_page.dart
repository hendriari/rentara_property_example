import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:rentara_property_clone/src/core/widgets/loading_widget.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/bloc/auth_event.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/bloc/auth_state.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AuthBloc>().add(AuthEvent.getCurrentUserData());
      FlutterNativeSplash.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            getCurrentUserDataSuccess: (user) {
              if (user != null) {
                context.goNamed('property');
              } else {
                context.goNamed("login");
              }
            },
            failed: (_, message) {
              context.goNamed("login");
            },
          );
        },
        child: Center(child: const LoadingWidget()),
      ),
    );
  }
}
