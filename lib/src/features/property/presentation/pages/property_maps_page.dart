import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentara_property_clone/src/core/widgets/appbar_with_search_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/header_persistent.dart';

class PropertyMapsPage extends StatelessWidget {
  const PropertyMapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // CONTENT
          _buildContentWidget(
          ),

          // FORM APPBAR
          AppbarWithSearchWidget(
            usingWithAppbar: false,
          ),
        ],
      ),
    );
  }

  Widget _buildContentWidget() {
    return NestedScrollView(
      headerSliverBuilder: (context, _) {
        return [
          // MAP
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverPersistentHeader(
              pinned: true,
              delegate: HeaderPersistent(
                maxHeight: .7.sh,
                minHeight: .4.sh,
                child: Placeholder(),
              ),
            ),
          ),
        ];
      },
      body: Builder(
        builder: (context) {
          return CustomScrollView(
            slivers: [
              // HEADER INJECTOR
              SliverOverlapInjector(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                  context,
                ),
              ),

              // CONTENT
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) =>
                      ListTile(title: Text('Property Item $index')),
                  childCount: 100,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
