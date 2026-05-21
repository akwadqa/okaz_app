import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../../src/resourses/font_manager/app_text_style.dart';

enum CommentAction { edit, delete, reply }

class CommentActionsMenu extends StatelessWidget {
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;
  final VoidCallback? onReply;
  const CommentActionsMenu(
      {super.key, this.onEdit, this.onDelete, this.onReply});

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
          } else if (value == CommentAction.reply) {
            onReply?.call();
          }
        },
        items: [
          if (onEdit != null)
            DropdownMenuItem(
              value: CommentAction.edit,
              child: Text(
                'edit'.tr(),
                style: AppTextStyle.rubikRegular14.copyWith(
                  color: AppColors.grayHint,
                ),
              ),
            ),
          if (onDelete != null)
            DropdownMenuItem(
              value: CommentAction.delete,
              child: Text(
                'delete'.tr(),
                style:
                    AppTextStyle.rubikRegular14.copyWith(color: AppColors.red),
              ),
            ),
          if (onReply != null)
            DropdownMenuItem(
              value: CommentAction.reply,
              child: Text(
                'reply'.tr(),
                style: AppTextStyle.rubikRegular14
                    .copyWith(color: AppColors.black),
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
