import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class ProductScreenFilterItem extends StatelessWidget {
  const ProductScreenFilterItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        value: '1',
        items: [
          DropdownMenuItem(child: Text('data1'), value: '1'),
          DropdownMenuItem(child: Text('data2'), value: '2'),
        ],

        onChanged: (val) {},
        isExpanded: true,
        isDense: true,
        customButton: Container(
          alignment: Alignment.center,
          height: 34,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: index == 1 ? AppColors.white : null,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: index == 1 ? AppColors.primary : AppColors.borderGrey,
            ),
          ),
          child: Row(
            spacing: 5,
            children: [
              Text(
                'السعر',
                style: AppTextStyle.rubikRegular14.copyWith(
                  color: index == 1 ? AppColors.primary : AppColors.grayHint,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: index == 1 ? AppColors.primary : AppColors.grayHint,
              ),
            ],
          ),
        ),
        iconStyleData: IconStyleData(
          icon: Icon(Icons.arrow_drop_down_rounded, color: AppColors.primary),
          iconSize: 28,
        ),

        buttonStyleData: const ButtonStyleData(padding: EdgeInsets.zero),
        dropdownStyleData: DropdownStyleData(
          width: 200,
          offset: const Offset((66 - 100) / 2, 0),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(height: 48),
      ),
    );
  }
}
