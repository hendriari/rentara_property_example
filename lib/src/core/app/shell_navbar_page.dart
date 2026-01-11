import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';

class ShellNavbarPage extends StatelessWidget {
  final Widget child;

  const ShellNavbarPage({super.key, required this.child});

  List<BottomNavigationBarItem> get _items => [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home, color: Colors.black),
      activeIcon: Icon(CupertinoIcons.home, color: Colors.grey),
      label: "Property",
    ),

    BottomNavigationBarItem(
      icon: Icon(Icons.work, color: Colors.black),
      activeIcon: Icon(Icons.work_outline, color: Colors.grey),
      label: "Work",
    ),

    BottomNavigationBarItem(
      icon: Icon(Icons.message, color: Colors.black),
      activeIcon: Icon(Icons.message_outlined, color: Colors.grey),
      label: "Notification",
    ),

    BottomNavigationBarItem(
      icon: Icon(Icons.person, color: Colors.black),
      activeIcon: Icon(Icons.person_outline, color: Colors.grey),
      label: "Account",
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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.neutral300,
              blurRadius: .5,
              blurStyle: BlurStyle.solid,
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,

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
      ),
    );
  }
}
