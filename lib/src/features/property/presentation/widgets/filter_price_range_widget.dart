import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:rentara_property_clone/src/core/injector/injector.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/utils/helper.dart';

class FilterPriceRangeWidget extends StatefulWidget {
  final RangeValues initialValues;
  final double maxPrice;
  final Function(RangeValues) onChanged;

  const FilterPriceRangeWidget({
    super.key,
    required this.initialValues,
    required this.maxPrice,
    required this.onChanged,
  });

  @override
  State<FilterPriceRangeWidget> createState() => _FilterPriceRangeWidgetState();
}

class _FilterPriceRangeWidgetState extends State<FilterPriceRangeWidget> {
  late RangeValues _currentRangeValues;
  late Helper _helper;

  @override
  void initState() {
    super.initState();
    _helper = injector<Helper>();
    _currentRangeValues = widget.initialValues;
  }

  String _formatCurrency(double value) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(value);
  }

  String _formatCompact(double value) {
    return NumberFormat.compact(locale: 'id_ID').format(value);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "IDR ${_helper.formatCurrency(_currentRangeValues.start)}",
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.neutral900,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: const Text("—"),
            ),
            Text(
              "IDR ${_helper.formatCurrency(_currentRangeValues.end)}",
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.neutral900,
              ),
            ),
          ],
        ),
        SizedBox(height: 24.h),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: AppColors.primaryColor600,
            inactiveTrackColor: AppColors.neutral200,
            trackHeight: 6.h,
            thumbColor: Colors.white,
            rangeThumbShape: RoundRangeSliderThumbShape(
              enabledThumbRadius: 12.r,
              elevation: 4,
            ),
            overlayColor: AppColors.primaryColor600.withValues(alpha: 0.12),
            activeTickMarkColor: Colors.transparent,
            inactiveTickMarkColor: Colors.transparent,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSliderIndicator(
                    _formatCompact(_currentRangeValues.start),
                    textTheme,
                  ),
                  _buildSliderIndicator(
                    _formatCompact(_currentRangeValues.end),
                    textTheme,
                  ),
                ],
              ),
              RangeSlider(
                values: _currentRangeValues,
                min: 0,
                max: widget.maxPrice,
                divisions: 100,
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                  widget.onChanged(values);
                },
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Rp 0", style: textTheme.bodySmall),
            Text(_formatCurrency(widget.maxPrice), style: textTheme.bodySmall),
          ],
        ),
      ],
    );
  }

  Widget _buildSliderIndicator(String text, TextTheme textTheme) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.neutral300),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        text,
        style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
