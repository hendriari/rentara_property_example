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
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          context.read<PropertyBloc>().add(PropertyEventReset());
          context.read<PropertyFilterBloc>().add(PropertyFilterResetEvent());
        }
      },
      child: MultiBlocListener(
        listeners: [
          // FILTER LISTENERS
          BlocListener<PropertyFilterBloc, PropertyFilterState>(
            listener: (context, filterState) {
              context.read<PropertyBloc>().add(
                PropertyEvent.getProperty(
                  query: _searchController.text,
                  status: filterState.status,
                  type: filterState.type?.isNotEmpty == true
                      ? filterState.type?.firstOrNull
                      : null,
                  minPrice: filterState.minPrice?.toInt(),
                  maxPrice: filterState.maxPrice?.toInt(),
                ),
              );
            },
          ),
        ],
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
              mainAxisSize: MainAxisSize.min,
              children: [
                // FILTER PROPERTY
                const ListFilterPropertyWidget(),

                // LIST PROPERTY
                Expanded(
                  child: _buildListProperty(
                    context: context,
                    textTheme: textTheme,
                    colorScheme: colorScheme,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildListProperty({
    required BuildContext context,
    required TextTheme textTheme,
    required ColorScheme colorScheme,
  }) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        final state = context.read<PropertyBloc>().state;

        state.maybeWhen(
          loadingGetNextProperty: (_) => false,
          orElse: () {
            if (notification.metrics.pixels >=
                notification.metrics.maxScrollExtent - 100) {
              context.read<PropertyBloc>().add(PropertyEventGetNextProperty());
              return true;
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
            init: (_) {
              return Center(
                child: Text(
                  "Find your dream property by searching by type (House, Apartment, Land, etc.)",
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            },
            loadingGetProperty: (_) {
              return const Center(child: LoadingWidget());
            },
            orElse: () {
              final listProperty = state.property?.data ?? [];
              final showLoading = state.maybeWhen(
                loadingGetNextProperty: (_) => true,
                orElse: () => false,
              );

              if (listProperty.isNotEmpty) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
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
                        itemCount: listProperty.length + (showLoading ? 1 : 0),
                        itemBuilder: (context, index) {
                          if (index >= listProperty.length) {
                            return Shimmer.fromColors(
                              baseColor: AppColors.primaryColor100,
                              highlightColor: AppColors.neutral100,
                              child: PropertyCardWidget(property: null),
                            );
                          }

                          final data = listProperty[index];
                          return PropertyCardWidget(
                            property: data,
                            onTap: () {
                              context.pushNamed("property-detail", extra: data);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                );
              } else {
                return Center(
                  child: Text(
                    "Oops, this type of property is not yet available",
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
