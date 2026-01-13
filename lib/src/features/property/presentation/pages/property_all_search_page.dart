import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rentara_property_clone/src/core/injector/injector.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_padding.dart';
import 'package:rentara_property_clone/src/core/utils/helper.dart';
import 'package:rentara_property_clone/src/core/widgets/appbar_with_search_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/loading_widget.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property/property_bloc.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property/property_event.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property/property_state.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_filter/property_filter_bloc.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_filter/property_filter_event.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_filter/property_filter_state.dart';
import 'package:rentara_property_clone/src/features/property/presentation/widgets/list_filters_property_widget.dart';
import 'package:rentara_property_clone/src/features/property/presentation/widgets/property_card_widget.dart';
import 'package:shimmer/shimmer.dart';

class PropertyAllSearchPage extends StatefulWidget {
  const PropertyAllSearchPage({super.key});

  @override
  State<PropertyAllSearchPage> createState() => _PropertyAllSearchPageState();
}

class _PropertyAllSearchPageState extends State<PropertyAllSearchPage> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          context.read<PropertyBloc>().add(PropertyEventReset());
          context.read<PropertyFilterBloc>().add(PropertyFilterResetEvent());
        }
      },
      child: BlocListener<PropertyFilterBloc, PropertyFilterState>(
        listener: (context, filterState) {
          context.read<PropertyBloc>().add(
            PropertyEvent.getProperty(
              query: _searchController.text,
              status: filterState.status,
              type: filterState.type?.isNotEmpty == true
                  ? filterState.type!.first
                  : null,
              minPrice: filterState.minPrice?.toInt(),
              maxPrice: filterState.maxPrice?.toInt(),
            ),
          );
        },
        child: Scaffold(
          appBar: AppBar(
            leading: const SizedBox.shrink(),
            flexibleSpace: AppbarWithSearchWidget(
              searchController: _searchController,
              onSearch: (value) {
                final filterState = context.read<PropertyFilterBloc>().state;
                context.read<PropertyBloc>().add(
                  PropertyEvent.getProperty(
                    query: value,
                    status: filterState.status,
                    type: filterState.type?.isNotEmpty == true
                        ? filterState.type!.first
                        : null,
                    minPrice: filterState.minPrice?.toInt(),
                    maxPrice: filterState.maxPrice?.toInt(),
                  ),
                );
              },
            ),
          ),
          body: Padding(
            padding: AppPadding.pagePadding,
            child: Column(
              children: [

                // FILTER
                const ListFilterPropertyWidget(),

                // CONTENT
                const Expanded(child: _PropertySearchResultList()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PropertySearchResultList extends StatelessWidget {
  const _PropertySearchResultList();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        final state = context.read<PropertyBloc>().state;

        state.maybeWhen(
          loadingGetProperty: (_) => false,
          loadingGetNextProperty: (_) => false,
          orElse: () {
            if (notification.metrics.pixels >=
                notification.metrics.maxScrollExtent - 200) {
              context.read<PropertyBloc>().add(PropertyEventGetNextProperty());
            }
          },
        );

        return false;
      },
      child: BlocConsumer<PropertyBloc, PropertyState>(
        listener: (context, state) {
          state.whenOrNull(
            errorGetProperty: (_, message) => injector<Helper>().showToast(
              message: message,
              backGroundColor: colorScheme.error,
            ),
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            init: (_) => _buildMessage(
              textTheme,
              "Find your dream property by searching...",
            ),
            loadingGetProperty: (_) => const Center(child: LoadingWidget()),
            orElse: () {
              final listProperty = state.property?.data ?? [];
              final showLoading = state.maybeWhen(
                loadingGetNextProperty: (_) => true,
                orElse: () => false,
              );

              if (listProperty.isEmpty) {
                return _buildMessage(
                  textTheme,
                  "Oops, this type of property is not yet available",
                );
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Text(
                      'All Results "${listProperty.length}"',
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      cacheExtent: 500,
                      itemCount: listProperty.length + (showLoading ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index >= listProperty.length) {
                          return Shimmer.fromColors(
                            baseColor: AppColors.primaryColor100,
                            highlightColor: AppColors.neutral100,
                            child: const PropertyCardWidget(property: null),
                          );
                        }

                        return RepaintBoundary(
                          child: PropertyCardWidget(
                            property: listProperty[index],
                            onTap: () => context.pushNamed(
                              "property-detail",
                              extra: listProperty[index],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildMessage(TextTheme textTheme, String message) {
    return Center(
      child: Text(
        message,
        style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
