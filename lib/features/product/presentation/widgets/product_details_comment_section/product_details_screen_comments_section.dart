import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_comment_section/reply_comment_bottom_sheet.dart';
import 'package:okaz/src/core/shared_widgets/app_dialogs.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

import 'product_details_screen_comment_tile.dart';
import 'edit_comment_bottom_sheet.dart';

class ProductDetailsScreenCommentsSection extends StatelessWidget {
  const ProductDetailsScreenCommentsSection({
    super.key,
    required this.productDetailsModel,
  });
  final ProductDetailsModel productDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        children: [
          const Divider(height: 1, color: AppColors.dividerColor),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
            child: Row(
              children: [
                Text(
                  'product_details.comments_title'.tr(),
                  style: AppTextStyle.rubikSemiBold16.copyWith(
                    color: AppColors.primary,
                  ),
                ),
                const Spacer(),
                Text(
                  'product_details.view_all'.tr(),
                  style: AppTextStyle.rubikMedium12,
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: AppColors.dividerColor),
          ...productDetailsModel.parentComments!.map(
            (c) => Column(
              children: [
                ProductDetailsScreenCommentTile(
                  postId: productDetailsModel.name ?? 'id',
                  comment: c,
                  onDelete: () => showDeleteCommentDialog(context,
                      c.name ?? 'id', productDetailsModel.name ?? 'id'),
                  onEdit: () async {
                    await showEditCommentBottomSheet(context,
                        comment: c, postId: productDetailsModel.name ?? 'id');
                  },
                  onReply: () async {
                    await showReplyCommentBottomSheet(context,
                        comment: c, postId: productDetailsModel.name ?? 'id');
                  },
                ),
                const Divider(height: 1, color: AppColors.dividerColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
