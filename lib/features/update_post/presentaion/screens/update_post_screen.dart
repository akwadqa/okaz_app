import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/addProduct/presentation/widgets/add_select_bottom_sheet.dart';
import 'package:okaz/features/addProduct/presentation/widgets/add_select_field.dart';
import 'package:okaz/features/addProduct/presentation/widgets/add_text_field.dart';
import 'package:okaz/features/addProduct/presentation/widgets/fourth_step/image_grid.dart';
import 'package:okaz/features/addProduct/presentation/widgets/fourth_step/step_review_view.dart';
import 'package:okaz/features/home/presentation/controller/home_controller.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/features/profile/presentation/controller/my_profile_controller.dart';
import 'package:okaz/features/update_post/presentaion/controller/update_post_controller.dart';
import 'package:okaz/features/update_post/presentaion/widgets/update_post_image_grid.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/shared_widgets/app_dialogs.dart';
import 'package:okaz/src/core/shared_widgets/app_loader.dart';
import 'package:okaz/src/core/shared_widgets/custom_app_bar.dart';
import 'package:okaz/src/core/shared_widgets/custom_button_widget.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

class UpdatePostScreen extends StatelessWidget {
  const UpdatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomDeafultAppbar(title: 'edit'.tr()),
      body: _UpdatePostScreenContent(),
    );
  }
}

class _UpdatePostScreenContent extends ConsumerWidget {
  const _UpdatePostScreenContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(updatePostControllerProvider).updatedPost!;
    final controller = ref.read(updatePostControllerProvider.notifier);

    final updateController = ref.watch(updatePostControllerProvider
        .select((val) => val.updatePostData ?? AsyncData(null)));

    ref.listen(updatePostControllerProvider.select((val) => val.updatePostData),
        (prev, next) {
      if (next is AsyncError) {
        showErrorDialog(context, next.error.toString());
      }
      if (next is AsyncData) {
        showUpdatePostSuccessDialog(
            context: context,
            onViewAd: () {
              context.go(AppRoutes.productDetailsScreen, extra: state.name);
            });
        // context.pop();
        ref
            .read(profileControllerProvider.notifier)
            .fetchMyPosts(page: 1, showLoading: true);
      }
    });
    // final categories =
    //     ref.read(homeControllerProvider).value?.homeModel.value?.categories;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const SectionTitle(
          title: 'product_images',
          subtitle: "max_5_images",
          required: true,
        ),
        UpdatePostImageGrid(
          images: state.images ?? [],
          onAdd: controller.pickImage,
          onRemove: controller.removeImage,
        ),
        12.verticalSpace,
        // AddSelectField(
        //   label: 'categories',
        //   isRequired: true,
        //   hint: 'select_category',
        //   value: state.category,
        //   onTap: () {
        //     FocusManager.instance.primaryFocus?.unfocus();
        //     showAddSelectSheet<String>(
        //       context: context,
        //       title: 'categories',
        //       items:
        //           categories?.map((e) => e?.categoryName ?? '').toList() ?? [],
        //       selected: state.category,
        //       labelBuilder: (v) => v,
        //       onConfirm: (v) {
        //         // controller.updateSpec(mainFilters.title, v);
        //         // controller.setSubCategoryType(v);
        //       },
        //     );
        //   },
        // ),
        SectionTitle(title: context.tr('price'), required: true),
        // const SizedBox(height: 12),

        AddTextField(
          hint: context.tr('price'),
          keyboardType: TextInputType.number,
          value: state.price.toString(),
          onChanged: (val) {
            controller
                .changePostData(ProductDetailsModel(price: num.parse(val)));
          },
        ),

        /// -----------------------------
        /// Arabic Details
        /// -----------------------------
        SectionTitle(title: context.tr('name_ar'), required: true),
        // const SizedBox(height: 12),

        AddTextField(
          hint: context.tr('name_ar'),
          value: state.titleAr,
          onChanged: (val) {
            controller.changePostData(ProductDetailsModel(titleAr: val));
          },
        ),

        SectionTitle(title: context.tr('name_en'), required: true),
        // const SizedBox(height: 12),

        AddTextField(
          hint: context.tr('name_en'),
          value: state.title,
          onChanged: (val) {
            controller.changePostData(ProductDetailsModel(title: val));
          },
        ),

        SectionTitle(title: context.tr('description_ar'), required: true),
        AddTextField(
          hint: context.tr('description_ar'),
          maxLines: 4,
          value: state.descriptionAr,
          onChanged: (val) {
            controller.changePostData(ProductDetailsModel(descriptionAr: val));
          },
        ),
        SectionTitle(title: context.tr('description_en'), required: true),
        AddTextField(
          hint: context.tr('description_en'),
          maxLines: 4,
          value: state.description,
          onChanged: (val) {
            controller.changePostData(ProductDetailsModel(description: val));
          },
        ),

        updateController.maybeWhen(
            loading: () => AppLoader(),
            orElse: () {
              return CustomButtonWidget(
                  text: 'update'.tr(),
                  elevation: 4,
                  shadowColor: AppColors.grayHint.withValues(alpha: .2),
                  onTap: () {
                    ref
                        .read(updatePostControllerProvider.notifier)
                        .updatePost();
                  },
                  isFiled: true,
                  backgroundColor: AppColors.primary,
                  height: 53,
                  width: double.infinity);
            })
      ],
    );
  }

  Future<void> showAddSelectSheet<T>({
    required BuildContext context,
    required String title,
    required List<T> items,
    required T? selected,
    required String Function(T) labelBuilder,
    required ValueChanged<T> onConfirm,
  }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      // showDragHandle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => AddSelectBottomSheet<T>(
        title: title.tr(),
        items: items,
        initialValue: selected,
        labelBuilder: labelBuilder,
        onConfirm: onConfirm,
      ),
    );
  }
}
