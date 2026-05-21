import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../comment/domain/model/create_comment/create_comment_model.dart';
import '../../../../comment/presentation/controller/comment_controller.dart';
import '../../../domain/model/product_details_model/product_details_model.dart';
import '../../controller/product_controller.dart';
import '../../../../../src/core/shared_widgets/app_loader.dart';
import '../../../../../src/core/shared_widgets/app_toast.dart';
import '../../../../../src/resourses/color_manager/app_colors.dart';

import '../../../../../gen/assets.gen.dart';
import 'product_details_screen_comment_tile.dart';

Future<void> showReplyCommentBottomSheet(
  BuildContext context, {
  required Comment comment,
  required String postId,
}) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: AppColors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) {
      return _EditCommentBottomSheet(
        comment: comment,
        postId: postId,
      );
    },
  );
}

class _EditCommentBottomSheet extends ConsumerStatefulWidget {
  final Comment comment;
  final String postId;
  const _EditCommentBottomSheet({required this.comment, required this.postId});

  @override
  ConsumerState<_EditCommentBottomSheet> createState() =>
      _EditCommentBottomSheetState();
}

class _EditCommentBottomSheetState
    extends ConsumerState<_EditCommentBottomSheet> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    ref.read(commentControllerProvider);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.viewInsetsOf(context).bottom;
    final updateState = ref.watch(
      commentControllerProvider.select((val) => val.value!.createComment),
    );

    ref.listen(
      commentControllerProvider.select((val) => val.value!.createComment),
      (previous, next) {
        if (next is AsyncError) {
          // showErrorDialog(context, next.error.toString());
          AppToast.errorToast(next.error.toString());
        }
        if (next is AsyncData) {
          AppToast.successToast('successfullyCompleted'.tr());

          ref
              .read(productControllerProvider.notifier)
              .getProductDetails(widget.postId);
          context.pop();
        }
      },
    );

    return SafeArea(
      top: false,
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(22, 12, 22, 24 + bottomPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ProductDetailsScreenCommentTile(
              comment: widget.comment,
              showMenu: false,
              postId: widget.postId,
              showChildren: false,
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _controller,
              minLines: 1,
              maxLines: 5,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                hintText: 'product_details_message_placeholder'.tr(),
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey97,
                ),
                filled: true,
                fillColor: AppColors.background,
                contentPadding: const EdgeInsetsDirectional.only(
                  start: 16,
                  end: 8,
                  top: 10,
                  bottom: 10,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: updateState?.maybeWhen(
                      loading: () =>
                          SizedBox(width: 40, child: const AppLoader()),
                      orElse: () => InkWell(
                        onTap: () {
                          ref
                              .read(commentControllerProvider.notifier)
                              .createComment(
                                CreateCommentModel(
                                  postId: widget.postId,
                                  parentComment: widget.comment.name,
                                  content: _controller.text,
                                ),
                              );
                        },
                        borderRadius: BorderRadius.circular(12),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Assets.icons.sendCommentIc.svg(),
                        ),
                      ),
                    ) ??
                    InkWell(
                      onTap: () {
                        ref
                            .read(commentControllerProvider.notifier)
                            .createComment(CreateCommentModel(
                              postId: widget.postId,
                              parentComment: widget.comment.name,
                              content: _controller.text,
                            ));
                      },
                      borderRadius: BorderRadius.circular(12),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Assets.icons.sendCommentIc.svg(),
                      ),
                    ),
                suffixIconConstraints: const BoxConstraints(
                  minWidth: 36,
                  minHeight: 36,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
