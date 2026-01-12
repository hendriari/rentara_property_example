import 'package:flutter/material.dart';
import 'package:rentara_property_clone/src/core/widgets/common_appbar_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const CommonAppbarWidget(),
      body: Center(
        child: Text("Notification Page", style: textTheme.bodyMedium),
      ),
    );
  }
}
