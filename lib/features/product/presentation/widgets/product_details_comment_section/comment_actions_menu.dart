import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

enum CommentAction { edit, delete }

class CommentActionsMenu extends StatelessWidget {
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;
  const CommentActionsMenu({super.key, this.onEdit, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<CommentAction>(
        customButton: const Icon(Icons.more_horiz, color: AppColors.grayHint),
        onChanged: (value) {
          if (value == CommentAction.edit) {
            onEdit?.call();
          } else if (value == CommentAction.delete) {
            onDelete?.call();
          }
        },
        items: [
          DropdownMenuItem(
            value: CommentAction.edit,
            child: Text(
              'تعديل',
              style: AppTextStyle.rubikRegular14.copyWith(
                color: AppColors.grayHint,
              ),
            ),
          ),
          DropdownMenuItem(
            value: CommentAction.delete,
            child: Text(
              'حذف',
              style: AppTextStyle.rubikRegular14.copyWith(color: AppColors.red),
            ),
          ),
        ],
        buttonStyleData: const ButtonStyleData(padding: EdgeInsets.zero),
        dropdownStyleData: DropdownStyleData(
          width: 140,
          offset: const Offset(0, 6),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(height: 40),
      ),
    );
  }
}
