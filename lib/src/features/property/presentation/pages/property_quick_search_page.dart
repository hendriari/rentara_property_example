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
    final textTheme = Theme.of(context).textTheme;
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
              init: (_) {
                return Padding(
                  padding: AppPadding.pagePadding,
                  child: Center(
                    child: Text(
                      "Find your dream property by searching by type (House, Apartment, Land, etc.)",
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
              loadingGetProperty: (_) {
                return const Center(child: LoadingWidget());
              },
              orElse: () {
                if (state.property?.data != null &&
                    state.property!.data!.isNotEmpty) {
                  final listProperty = state.property?.data ?? [];
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
                            // FOUND PROPERTY TYPE
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
                            itemCount: listProperty.length > 10
                                ? 10
                                : listProperty.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final data = listProperty[index];
                              return CardQuickSearchWidget(
                                property: data,
                                onTap: () =>
                                    context.pushNamed("property-detail"),
                                themeText: textTheme,
                              );
                            },
                          ),
                        ),

                        // SHOW MORE
                        totalProperty > 10
                            ? ButtonWidget(
                                buttonText: "",
                                onTap: () =>
                                    context.pushReplacementNamed("all-search"),
                                bgColor: Colors.white,
                                border: Border.all(
                                  color: AppColors.primaryColor600,
                                  width: 2,
                                ),
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
                              )
                            : const SizedBox.shrink(),
                      ],
                    ),
                  );
                } else {
                  return Padding(
                    padding: AppPadding.pagePadding,
                    child: Center(
                      child: Text(
                        "Oops, this type of property is not yet available",
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
