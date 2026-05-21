import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../domain/model/product_details_model/product_details_model.dart';
import 'reply_comment_bottom_sheet.dart';
import '../../../../../src/core/shared_widgets/app_dialogs.dart';
import '../../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../../src/resourses/font_manager/app_text_style.dart';

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
          if (productDetailsModel.parentComments?.isNotEmpty ?? false)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
              child: Row(
                children: [
                  Text(
                    'product_details_comments_title'.tr(),
                    style: AppTextStyle.rubikSemiBold16.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  const Spacer(),
                  // Text(
                  //   'product_details_view_all'.tr(),
                  //   style: AppTextStyle.rubikMedium12,
                  // ),
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
                  onDelete: (c.commentBy?.userIsOwner ?? false)
                      ? () => showDeleteCommentDialog(context, c.name ?? 'id',
                          productDetailsModel.name ?? 'id')
                      : null,
                  onEdit: (c.commentBy?.userIsOwner ?? false)
                      ? () async {
                          await showEditCommentBottomSheet(context,
                              comment: c,
                              postId: productDetailsModel.name ?? 'id');
                        }
                      : null,
                  onReply: (productDetailsModel.userIsOwner ?? false)
                      ? () async {
                          await showReplyCommentBottomSheet(context,
                              comment: c,
                              postId: productDetailsModel.name ?? 'id');
                        }
                      : null,
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
