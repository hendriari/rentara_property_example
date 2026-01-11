import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentara_property_clone/src/core/app/shell_navbar_page.dart';
import 'package:rentara_property_clone/src/core/injector/injector.dart';
import 'package:rentara_property_clone/src/core/services/local/session_manager.dart';
import 'package:rentara_property_clone/src/features/account/presentation/page/account_page.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/pages/login_page.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/pages/register_page.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/pages/splash_page.dart';
import 'package:rentara_property_clone/src/features/notification/presentation/page/notification_page.dart';
import 'package:rentara_property_clone/src/features/property/presentation/property_page.dart';
import 'package:rentara_property_clone/src/features/work/presentation/page/work_page.dart';

part 'app_routes_observers.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

class AppRoutes {
  static final AppRoutes _instance = AppRoutes._internal();

  factory AppRoutes() {
    return _instance;
  }

  AppRoutes._internal();

  static route() => GoRouter(
    initialLocation: "/",
    navigatorKey: _rootNavigatorKey,
    observers: [_routeObserver, _AppRoutesObservers()],
    refreshListenable: injector<SessionManager>(),
    redirect: (context, state) {
      final sessionManager = injector<SessionManager>();

      final isAuthRoute =
          state.matchedLocation == '/login' ||
          state.matchedLocation == '/register' ||
          state.matchedLocation == '/';

      if (!sessionManager.isLoggedIn && !isAuthRoute) {
        return '/login';
      }

      if (sessionManager.isLoggedIn && state.matchedLocation == '/login') {
        return '/property';
      }

      return null;
    },
    routes: [
      // SPLASH
      GoRoute(
        path: "/",
        name: "splash",
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (c, s) {
          return _customTransition(child: const SplashPage());
        },
      ),

      // LOGIN
      GoRoute(
        path: "/login",
        name: "login",
        parentNavigatorKey: _rootNavigatorKey,
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

      // REGISTER
      GoRoute(
        path: "/register",
        name: "register",
        parentNavigatorKey: _rootNavigatorKey,
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

      // NAVBAR
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        pageBuilder: (context, state, child) {
          return _customTransition(child: ShellNavbarPage(child: child));
        },
        routes: [
          // PROPERTY PAGE
          GoRoute(
            path: '/property',
            name: 'property',
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) {
              return _customTransition(child: const PropertyPage());
            },
          ),
          // WORK PAGE
          GoRoute(
            path: '/work',
            name: 'work',
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) {
              return _customTransition(child: const WorkPage());
            },
          ),

          // NOTIFICATION PAGE
          GoRoute(
            path: '/notification',
            name: 'notification',
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) {
              return _customTransition(child: const NotificationPage());
            },
          ),

          // ACCOUNT PAGE
          GoRoute(
            path: '/account',
            name: 'account',
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) {
              return _customTransition(child: const AccountPage());
            },
          ),
        ],
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
