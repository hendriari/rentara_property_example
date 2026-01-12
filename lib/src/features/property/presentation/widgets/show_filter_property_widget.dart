import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_padding.dart';
import 'package:rentara_property_clone/src/core/theme/app_radius.dart';
import 'package:rentara_property_clone/src/core/utils/enums.dart';
import 'package:rentara_property_clone/src/core/widgets/button_widget.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_filter/property_filter_bloc.dart';
import 'package:rentara_property_clone/src/features/property/presentation/bloc/property_filter/property_filter_event.dart';
import 'package:rentara_property_clone/src/features/property/presentation/utils/property_filter_static.dart';
import 'package:rentara_property_clone/src/features/property/presentation/widgets/filter_price_range_widget.dart';
import 'package:rentara_property_clone/src/features/property/presentation/widgets/header_filter_widget.dart';

class FilterPropertyCardWidget extends StatefulWidget {
  final PropertyFilterType type;
  final String title;
  final double? minPrice;

  const FilterPropertyCardWidget({
    super.key,
    required this.type,
    required this.title,
    this.minPrice,
  });

  @override
  State<FilterPropertyCardWidget> createState() =>
      _FilterPropertyCardWidgetState();
}

class _FilterPropertyCardWidgetState extends State<FilterPropertyCardWidget> {
  late TextTheme _textTheme;
  final List<String> _selectedFilters = [];

  late RangeValues _currentRangeValues;
  final double _maxPrice = 100000000;

  @override
  void initState() {
    super.initState();
    _currentRangeValues = RangeValues((widget.minPrice ?? 0), 100000000);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textTheme = Theme.of(context).textTheme;
  }

  void _toggleFilter(String filter) {
    setState(() {
      final bool isSingleSelection = widget.type == PropertyFilterType.status;

      if (isSingleSelection) {
        if (_selectedFilters.contains(filter)) {
          _selectedFilters.clear();
        } else {
          _selectedFilters.clear();
          _selectedFilters.add(filter);
        }
      } else {
        if (_selectedFilters.contains(filter)) {
          _selectedFilters.remove(filter);
        } else {
          _selectedFilters.add(filter);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // DIVIDER
          Container(
            width: 40.w,
            height: 6.h,
            margin: EdgeInsets.only(top: 8.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: AppColors.neutral300,
            ),
          ),

          // HEADER FILTER
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
            child: HeaderFilterWidget(title: widget.title),
          ),

          const Divider(color: AppColors.neutral300, height: 1),

          // CONTENT
          Padding(
            padding: AppPadding.pagePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h),

                _buildListContentFilterWidget(),

                SizedBox(height: 32.h),

                // BUTTON CONFIRM
                ButtonWidget(
                  buttonText: "Confirm",
                  onTap: () {
                    final bloc = context.read<PropertyFilterBloc>();

                    switch (widget.type) {
                      case PropertyFilterType.status:
                        if (_selectedFilters.isNotEmpty) {
                          bloc.add(
                            PropertyFilterEvent.updateStatus(
                              status: _selectedFilters.first,
                            ),
                          );
                        }
                        break;

                      case PropertyFilterType.location:
                        bloc.add(
                          PropertyFilterEvent.updateLocation(
                            location: _selectedFilters,
                          ),
                        );
                        break;

                      case PropertyFilterType.type:
                        bloc.add(
                          PropertyFilterEvent.updateType(
                            type: _selectedFilters,
                          ),
                        );
                        break;

                      case PropertyFilterType.price:
                        bloc.add(
                          PropertyFilterEvent.updatePrice(
                            minPrice: _currentRangeValues.start,
                            maxPrice: _currentRangeValues.end,
                          ),
                        );
                        break;
                    }

                    context.pop(true);
                  },
                ),

                SizedBox(height: 16.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListContentFilterWidget() {
    switch (widget.type) {
      case PropertyFilterType.status:
        return _buildWrapFilter(PropertyFilterStatic.status);
      case PropertyFilterType.location:
        return _buildWrapFilter(PropertyFilterStatic.location);
      case PropertyFilterType.type:
        return _buildWrapFilter(PropertyFilterStatic.type);
      case PropertyFilterType.price:
        return FilterPriceRangeWidget(
          initialValues: _currentRangeValues,
          maxPrice: _maxPrice,
          onChanged: (values) {
            _currentRangeValues = values;
          },
        );
    }
  }

  Widget _buildWrapFilter(List<String> list) {
    return Wrap(
      spacing: 8.w,
      runSpacing: 12.h,
      children: list.map((filterName) {
        final bool isSelected = _selectedFilters.contains(filterName);
        return _buildCardFilterWidget(
          filterName: filterName,
          isSelected: isSelected,
          onTap: () => _toggleFilter(filterName),
        );
      }).toList(),
    );
  }

  Widget _buildCardFilterWidget({
    required String filterName,
    bool isSelected = false,
    VoidCallback? onTap,
  }) {
    return Bounceable(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.commonRadius),
          color: isSelected ? AppColors.primaryColor600 : AppColors.neutral100,
          border: Border.all(
            color: isSelected
                ? AppColors.primaryColor600
                : AppColors.neutral300,
            width: 1.w,
          ),
        ),
        child: Text(
          filterName,
          style: _textTheme.labelLarge?.copyWith(
            color: isSelected ? Colors.white : AppColors.neutral900,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

Future<bool?> showFilterProperty(
  BuildContext context, {
  required PropertyFilterType type,
  required String title,
  double? minPrice,
}) {
  return showModalBottomSheet<bool>(
    context: context,
    requestFocus: true,
    useSafeArea: true,
    useRootNavigator: true,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
    ),
    builder: (BuildContext context) {
      return FilterPropertyCardWidget(
        type: type,
        title: title,
        minPrice: minPrice,
      );
    },
  );
}
