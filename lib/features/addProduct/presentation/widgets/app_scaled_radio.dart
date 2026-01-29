import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

class AppScaledRadio<T> extends StatelessWidget {
  const AppScaledRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.scale = 1.2,
  });

  final T value;
  final T? groupValue;
  final ValueChanged<T> onChanged;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,
      child: Radio<T>(
        value: value,
        groupValue: groupValue,
        onChanged: (_) => onChanged(value),
        side: BorderSide(color: AppColors.primaryBorder),
        activeColor: AppColors.primary,
        materialTapTargetSize: MaterialTapTargetSize.padded,
        fillColor:
            WidgetStatePropertyAll(AppColors.primary),
        overlayColor:
            WidgetStatePropertyAll(AppColors.primary.withOpacity(0.1)),
      ),
    );
  }
}
