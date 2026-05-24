import 'package:flutter/material.dart';
import '../../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../../src/resourses/font_manager/app_text_style.dart';

class FiltersScreenRadioItem extends StatelessWidget {
  final String title;
  final String groupValue;
  final ValueChanged<String?> onChanged;

  const FiltersScreenRadioItem({
    super.key,
    required this.title,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(title),
      child: Container(
        padding: EdgeInsets.all(13),
        width: 150,
        decoration: BoxDecoration(
          color: title == groupValue
              ? AppColors.secondPrimary
              : AppColors.white,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: title == groupValue
                ? AppColors.primary
                : AppColors.borderGrey,
          ),
        ),
        child: Row(
          spacing: 15,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio<String>(
              value: title,
              groupValue: groupValue,
              onChanged: onChanged,
              enabled: true,
              side: BorderSide(color: AppColors.borderGrey),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity,
              ),
              activeColor: AppColors.primary,
              backgroundColor: WidgetStatePropertyAll(AppColors.white),
            ),
            Text(
              title,
              style: AppTextStyle.rubikMedium14.copyWith(
                color: title == groupValue
                    ? AppColors.primary
                    : AppColors.textDart,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
