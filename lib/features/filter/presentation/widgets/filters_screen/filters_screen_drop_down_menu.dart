import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class FiltersScreenDropDownMenu extends StatelessWidget {
  final String title;
  final List<String> items;
  final String? value;
  final ValueChanged<String?> onChanged;

  const FiltersScreenDropDownMenu({
    super.key,
    required this.title,
    required this.items,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(
          title,
          style: AppTextStyle.rubikMedium16.copyWith(color: AppColors.textDart),
        ),
        DropdownButtonHideUnderline(
          child: DropdownButtonFormField2<String>(
            value: value,
            items: items
                .map(
                  (item) => DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  ),
                )
                .toList(),
            onChanged: onChanged,
            hint: Text(
              'all'.tr(),
              style: AppTextStyle.rubikRegular16.copyWith(
                color: AppColors.grayHint,
              ),
            ),
            isExpanded: true,
            isDense: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.white,
              contentPadding: EdgeInsets.zero,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide(color: AppColors.grayBorder),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide(color: AppColors.grayBorder),
              ),
            ),
            iconStyleData: IconStyleData(
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: AppColors.grayHint,
              ),
              iconSize: 28,
            ),
            buttonStyleData: const ButtonStyleData(padding: EdgeInsets.zero),
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(height: 48),
          ),
        ),
      ],
    );
  }
}
