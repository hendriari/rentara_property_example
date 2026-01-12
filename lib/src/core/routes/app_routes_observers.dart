part of 'app_routes.dart';

final RouteObserver<ModalRoute<void>> _routeObserver =
    RouteObserver<ModalRoute<void>>();

class _AppRoutesObservers extends NavigatorObserver {
  @override
  void didRemove(Route route, Route? previousRoute) {
    dev.log(
      '➡️ Route ${route.settings.name} removed because using GO',
      name: 'Go Router Observers',
    );
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    dev.log(
      '♻️ Route ${oldRoute?.settings.name} replaced with ${newRoute?.settings.name}',
      name: 'Go Router Observers',
    );
  }
}
