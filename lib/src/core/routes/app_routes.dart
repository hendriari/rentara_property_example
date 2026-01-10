import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/pages/login_page.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/pages/register_page.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/pages/splash_page.dart';

part 'app_routes_observers.dart';

class AppRoutes {
  static final AppRoutes _instance = AppRoutes._internal();

  factory AppRoutes() {
    return _instance;
  }

  AppRoutes._internal();

  static route() => GoRouter(
    initialLocation: "/",
    observers: [_routeObserver, _AppRoutesObservers()],
    routes: [
      GoRoute(
        path: "/",
        name: "splash",
        pageBuilder: (c, s) {
          return _customTransition(child: const SplashPage());
        },
      ),

      GoRoute(
        path: "/login",
        name: "login",
        pageBuilder: (context, state) {
          return _customTransition(
            transitionBuilder: (context, animation, secondAnimation, child) {
              return _slideTransition(
                context,
                animation,
                secondAnimation,
                child,
              );
            },
            child: const LoginPage(),
          );
        },
      ),

      GoRoute(
        path: "/register",
        name: "register",
        pageBuilder: (context, state) {
          return _customTransition(
            transitionBuilder: (context, animation, secondAnimation, child) {
              return _slideTransition(
                context,
                animation,
                secondAnimation,
                child,
              );
            },
            child: const RegisterPage(),
          );
        },
      ),
    ],
  );

  static SlideTransition _slideTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondAnimation,
    Widget child,
  ) => SlideTransition(
    position: TweenSequence<Offset>([
      TweenSequenceItem(
        tween: Tween(begin: const Offset(1, 0), end: const Offset(-0.03, 0)),
        weight: 85,
      ),
      TweenSequenceItem(
        tween: Tween(begin: const Offset(-0.03, 0), end: Offset.zero),
        weight: 85,
      ),
    ]).animate(animation),
    child: child,
  );

  static CustomTransitionPage _customTransition({
    required Widget child,
    Widget Function(
      BuildContext,
      Animation<double>,
      Animation<double>,
      Widget child,
    )?
    transitionBuilder,
    Duration transitionDuration = const Duration(milliseconds: 300),
    Duration reverseTransitionDuration = const Duration(milliseconds: 300),
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool opaque = true,
    bool barrierDismissible = false,
    Color? barrierColor,
    String? barrierLabel,
    LocalKey? key,
    String? name,
    Object? arguments,
    String? restorationId,
  }) {
    return CustomTransitionPage(
      transitionsBuilder:
          transitionBuilder ??
          (context, animation, secondAnimation, child) => SlideTransition(
            position: Tween(
              begin: Offset(0, 1),
              end: Offset.zero,
            ).animate(animation),
            child: FadeTransition(opacity: animation, child: child),
          ),
      child: child,
      transitionDuration: transitionDuration,
      reverseTransitionDuration: reverseTransitionDuration,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
      opaque: opaque,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      key: key,
      name: name,
      arguments: arguments,
      restorationId: restorationId,
    );
  }
}
