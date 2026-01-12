import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rentara_property_clone/src/core/injector/injector.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_padding.dart';
import 'package:rentara_property_clone/src/core/utils/helper.dart';
import 'package:rentara_property_clone/src/core/widgets/appbar_with_search_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/button_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/loading_widget.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property/property_bloc.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property/property_event.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property/property_state.dart';
import 'package:rentara_property_clone/src/features/property/presentation/widgets/card_quick_search_widget.dart';

class PropertyQuickSearchPage extends StatelessWidget {
  const PropertyQuickSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          context.read<PropertyBloc>().add(PropertyEventReset());
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox.shrink(),
          flexibleSpace: AppbarWithSearchWidget(
            onSearch: (value) {
              context.read<PropertyBloc>().add(
                PropertyEventGetProperty(query: value),
              );
            },
            autoFocus: true,
          ),
        ),
        body: BlocConsumer<PropertyBloc, PropertyState>(
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
              init: (_) => const _QuickSearchMessageWidget(
                message:
                    "Find your dream property by searching by type (House, Apartment, Land, etc.)",
              ),
              loadingGetProperty: (_) => const Center(child: LoadingWidget()),
              orElse: () {
                final listProperty = state.property?.data ?? [];

                if (listProperty.isEmpty) {
                  return const _QuickSearchMessageWidget(
                    message: "Oops, this type of property is not yet available",
                  );
                }

                return _QuickSearchResultContent(listProperty: listProperty);
              },
            );
          },
        ),
      ),
    );
  }
}

// RESULT WIDGET
class _QuickSearchResultContent extends StatelessWidget {
  final List listProperty;

  const _QuickSearchResultContent({required this.listProperty});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final totalProperty = listProperty.length;

    final foundProperty = listProperty
        .map((e) => e.type)
        .whereType<String>()
        .toSet()
        .join(", ");

    return Padding(
      padding: AppPadding.pagePadding,
      child: Column(
        children: [
          // SUMMARY
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // FOND PROPERTY
              Expanded(
                child: Text(
                  'Result for "${injector<Helper>().toSentenceCase(foundProperty)}" ',
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(width: 6.w),

              // TOTAL PROPERTY
              Text(
                '${totalProperty > 10 ? '10+' : totalProperty} Property',
                style: textTheme.bodySmall?.copyWith(
                  color: AppColors.primaryColor600,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          // LIST PROPERTY
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              itemCount: listProperty.length > 10 ? 10 : listProperty.length,
              itemBuilder: (context, index) {
                return RepaintBoundary(
                  child: CardQuickSearchWidget(
                    property: listProperty[index],
                    onTap: () => context.pushNamed(
                      "property-detail",
                      extra: listProperty[index],
                    ),
                    themeText: textTheme,
                  ),
                );
              },
            ),
          ),

          // SHOW MORE
          if (totalProperty > 10)
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: ButtonWidget(
                buttonText: "",
                onTap: () => context.pushReplacementNamed("all-search"),
                bgColor: Colors.white,
                border: Border.all(color: AppColors.primaryColor600, width: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "See all result",
                      style: textTheme.labelLarge?.copyWith(
                        color: AppColors.primaryColor600,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: AppColors.primaryColor600,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// COMMON MESSAGE
class _QuickSearchMessageWidget extends StatelessWidget {
  final String message;

  const _QuickSearchMessageWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.pagePadding,
      child: Center(
        child: Text(
          message,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
