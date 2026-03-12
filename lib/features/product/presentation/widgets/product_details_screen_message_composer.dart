import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/comment/domain/model/create_comment/create_comment_model.dart';
import 'package:okaz/features/comment/presentation/controller/comment_controller.dart';
import 'package:okaz/features/product/presentation/controller/product_controller.dart';
import 'package:okaz/src/core/shared_widgets/app_dialogs.dart';
import 'package:okaz/src/core/shared_widgets/app_loader.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

import '../../../../gen/assets.gen.dart';

class ProductDetailsScreenMessageComposer extends ConsumerStatefulWidget {
  const ProductDetailsScreenMessageComposer({super.key, required this.postId});
  final String postId;

  @override
  ConsumerState<ProductDetailsScreenMessageComposer> createState() =>
      _ProductDetailsScreenMessageComposerState();
}

class _ProductDetailsScreenMessageComposerState
    extends ConsumerState<ProductDetailsScreenMessageComposer> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    ref.read(commentControllerProvider);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(
      commentControllerProvider.select((val) => val.value!.createComment),
    );

    ref.listen(
      commentControllerProvider.select((val) => val.value!.createComment),
      (previous, next) {
        if (next is AsyncError) {
          showErrorDialog(context, next.error.toString());
        }
        if (next is AsyncData) {
          _controller.clear();
          ref
              .read(productControllerProvider.notifier)
              .getProductDetails(widget.postId);
        }
      },
    );
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
      child: SizedBox(
        height: 43,
        child: TextFormField(
          controller: _controller,
          maxLines: 1,
          textAlign: TextAlign.right,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            hintText: 'product_details.message_placeholder'.tr(),
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.grey97,
            ),
            filled: true,
            fillColor: AppColors.background,
            contentPadding: const EdgeInsetsDirectional.only(start: 16, end: 8),
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
            suffixIcon: controller?.maybeWhen(
                  loading: () => SizedBox(width: 40, child: const AppLoader()),
                  orElse: () => InkWell(
                    onTap: () {
                      ref
                          .read(commentControllerProvider.notifier)
                          .createComment(
                            CreateCommentModel(
                              content: _controller.text,
                              postId: widget.postId,
                              parentComment: null,
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
                    ref.read(commentControllerProvider.notifier).createComment(
                          CreateCommentModel(
                            content: _controller.text,
                            postId: widget.postId,
                            parentComment: null,
                          ),
                        );
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
      ),
    );
  }
}
