import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../domain/model/product_details_model/product_details_model.dart';
import '../../../../../src/core/shared_widgets/app_dialogs.dart';
import '../../../../../src/core/utils/extenssions/time_extension.dart';
import '../../../../../src/infrastructure/api/endpoint/services_urls.dart';
import '../../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../../src/resourses/font_manager/app_text_style.dart';

import 'comment_actions_menu.dart';
import 'edit_comment_bottom_sheet.dart';
import 'product_details_screen_sub_comment_tile.dart';

class ProductDetailsScreenCommentTile extends StatelessWidget {
  final Comment comment;
  final VoidCallback? onEdit;
  final VoidCallback? onReply;
  final VoidCallback? onDelete;
  final bool showMenu;
  final bool showChildren;
  final String postId;
  const ProductDetailsScreenCommentTile({
    super.key,
    required this.comment,
    required this.postId,
    this.onEdit,
    this.onReply,
    this.onDelete,
    this.showMenu = true,
    this.showChildren = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: (comment.commentBy?.image == null ||
                        comment.commentBy?.image == '')
                    ? AppColors.grayHint
                    : null,
                backgroundImage: (comment.commentBy?.image == null ||
                        comment.commentBy?.image == '')
                    ? null
                    : CachedNetworkImageProvider(
                        ServicesUrls.imageUrl + comment.commentBy!.image!,
                      ),
                child: (comment.commentBy?.image == null ||
                        comment.commentBy?.image == '')
                    ? Text(
                        comment.commentBy?.firstName
                                ?.substring(0, 2)
                                .toUpperCase() ??
                            'not_available'.tr(),
                      )
                    : null,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          comment.commentBy?.firstName ?? 'name'.tr(),
                          style: AppTextStyle.rubikMedium16,
                        ),
                        const Spacer(),
                        if (showMenu &&
                            (onReply != null ||
                                onDelete != null ||
                                onEdit != null))
                          CommentActionsMenu(
                            onEdit: onEdit,
                            onDelete: onDelete,
                            onReply: onReply,
                          ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: showMenu ? 200 : 170,
                          child: Text(
                            comment.content ?? 'comment'.tr(),
                            style: AppTextStyle.rubikRegular14.copyWith(
                              color: AppColors.grayHint,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Spacer(),
                        Text(
                          DateTime.parse(
                            comment.timestamp ?? DateTime.now().toString(),
                          ).timeAgo(),
                          style: AppTextStyle.rubikRegular12.copyWith(
                            color: AppColors.grayHint,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (showChildren)
            ...((comment.childComments ?? []).map(
              (subCommint) => ProductDetailsScreenSubCommentTile(
                comment: subCommint,
                onDelete: (subCommint.commentBy?.userIsOwner ?? false)
                    ? () {
                        showDeleteCommentDialog(
                            context, subCommint.name ?? 'id', postId);
                      }
                    : null,
                onEdit: (subCommint.commentBy?.userIsOwner ?? false)
                    ? () async {
                        await showEditCommentBottomSheet(context,
                            comment: subCommint, postId: postId);
                      }
                    : null,
              ),
            )),
        ],
      ),
    );
  }
}
