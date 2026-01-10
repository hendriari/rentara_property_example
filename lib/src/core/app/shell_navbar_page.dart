import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShellNavbarPage extends StatelessWidget {
  final Widget child;

  const ShellNavbarPage({super.key, required this.child});

  List<BottomNavigationBarItem> get _items => [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home, color: Colors.black),
      activeIcon: Icon(CupertinoIcons.home, color: Colors.grey),
      tooltip: "Dashboard",
    ),

    BottomNavigationBarItem(
      icon: Icon(Icons.work, color: Colors.black),
      activeIcon: Icon(Icons.work_outline, color: Colors.grey),
      tooltip: "Work",
    ),

    BottomNavigationBarItem(
      icon: Icon(Icons.message, color: Colors.black),
      activeIcon: Icon(Icons.message_outlined, color: Colors.grey),
      tooltip: "Notification",
    ),

    BottomNavigationBarItem(
      icon: Icon(Icons.person, color: Colors.black),
      activeIcon: Icon(Icons.person_outline, color: Colors.grey),
      tooltip: "Account",
    ),
  ];

  int _routeIndex(String location) {
    if (location.startsWith("/work")) return 1;
    if (location.startsWith("/notification")) return 2;
    if (location.startsWith("/account")) return 3;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    final currentIndex = _routeIndex(location);
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          switch (index) {
            case 0:
              context.goNamed('property');
              break;
            case 1:
              context.goNamed('work');
              break;
            case 2:
              context.goNamed('notification');
              break;
            case 3:
              context.goNamed('account');
              break;
          }
        },
        currentIndex: currentIndex,
        items: _items,
      ),
    );
  }
}
