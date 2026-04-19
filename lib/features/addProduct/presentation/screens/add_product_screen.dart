import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/addProduct/domain/model/category_model.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/shared_widgets/app_dialogs.dart';
import 'package:okaz/src/core/shared_widgets/app_loader.dart';
import 'package:okaz/src/core/shared_widgets/app_toast.dart';
import 'package:okaz/src/core/shared_widgets/custom_button_widget.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

import '../../../../src/core/shared_widgets/auht_guard.dart';
import '../controller/add_product_controller.dart';
import '../widgets/first_step/step_category_view.dart';
import '../widgets/second_step/step_details_view.dart';
import '../widgets/third_step/step_product_info_view.dart';
import '../widgets/fourth_step/step_review_view.dart';

class AddProductScreen extends ConsumerWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addProductControllerProvider).value!;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        // if (didPop) {
        //   context.goNamed(AppRoutes.mainScreen);
        // }
        if (didPop) return;

        if (context.canPop()) {
          context.pop();
        } else {
          context.goNamed(AppRoutes.mainScreen);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.background,
          elevation: 0,
          title: Text(context.tr('add_ad_title')),
          surfaceTintColor: Colors.transparent,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => context.goNamed(AppRoutes.mainScreen),
          ),
        ),
        body: AuthGuard(
          child: Column(
            children: [
              _ProgressBar(step: state.step),
              Expanded(child: _StepContent(step: state.step)),
              _BottomButtons(step: state.step),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProgressBar extends StatelessWidget {
  final int step;
  const _ProgressBar({required this.step});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Text(
            context.tr(
              'step_from_total',
              namedArgs: {'current': step.toString(), 'total': '4'},
            ),
            style: AppTextStyle.rubikSemiBold14.copyWith(
              color: AppColors.primary,
            ),
          ),
          LinearProgressIndicator(
            backgroundColor: AppColors.grey,
            color: AppColors.primary,
            value: step / 4,
            minHeight: 12,
            borderRadius: BorderRadius.circular(8),
          ),
        ],
      ),
    );
  }
}

class _StepContent extends StatelessWidget {
  final int step;
  const _StepContent({required this.step});

  @override
  Widget build(BuildContext context) {
    switch (step) {
      case 1:
        return const StepCategoryView();
      case 2:
        return const StepDetailsView();
      case 3:
        return const StepProductInfoView();
      case 4:
        return const StepReviewView();
      default:
        return const SizedBox();
    }
  }
}

class _BottomButtons extends ConsumerWidget {
  final int step;
  const _BottomButtons({required this.step});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addProductControllerProvider).value!;
    final controller = ref.read(addProductControllerProvider.notifier);

    final canProceed = state.step == 3
        ? controller.canGoNextForSpecs(
            state.attributes.where((e) => e.title != 'City').toList())
        : controller.canGoNext();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (step > 1)
            Flexible(
              flex: 2,
              child: CustomButtonWidget(
                text: "previous",
                onTap: () {
                  controller.previousStep();
                },
                isFiled: false,
                height: 55,
                width: double.infinity,
                color: AppColors.primary,
                backgroundColor: AppColors.secondPrimary,
                radius: 24,
              ),

              // OutlinedButton(
              //   onPressed: controller .previousStep,
              //   child: const Text('السابق'),
              // ),
            ),
          if (step > 1) const SizedBox(width: 12),
          Consumer(builder: (context, ref, widget) {
            ref.listen(addProductControllerProvider, (prev, next) {
              final wasLoading = prev is AsyncLoading;
              final isSuccess = next is AsyncData;

              if (wasLoading && isSuccess && next.value?.step == 4) {
                debugPrint("Success newAdSuccsessScreen");
                context.push(AppRoutes.newAdSuccsessScreen);
              }
              if (next is AsyncError) {
                // showErrorDialog(context, next.error.toString());
                AppToast.errorToast(next.error.toString());
              }
            });

            final state = ref.watch(addProductControllerProvider);
            final provider = ref.read(addProductControllerProvider.notifier);
            // if (state is AsyncLoading) {
            //   return AppLoader();
            //   // const FadeCircleLoadingIndicator();
            // }
            return Flexible(
              flex: 3,
              child: state is AsyncLoading
                  ? AppLoader()
                  : CustomButtonWidget(
                      text: step != 4 ? 'next' : "",
                      onTap: canProceed
                          ? () {
                              Dev.logMap(state.value!.specs);
                              {
                                if (step == 4) {
                                  // submitProduct();
                                  provider.submitPost();
                                } else {
                                  controller.nextStep();
                                }
                              }
                            }
                          : null,
                      isFiled: true,
                      height: 55,
                      width: double.infinity,
                      backgroundColor:
                          canProceed ? AppColors.primary : AppColors.gray,
                      radius: 24,
                      child: step == 4
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 12,
                              children: [
                                Text(
                                  context.tr("add_ad"),
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                Assets.icons.rocketIc.svg(),
                              ],
                            )
                          : null,
                    ).centered(),
              // ElevatedButton(
              //   onPressed:canProceed
              //       ? () {
              //           if (step == 4) {
              //             // submitProduct();
              //           } else {
              //             notifier.nextStep();
              //           }
              //         }
              //       : null, // 🚫 disabled
              //   child: Text(step == 4 ? 'نشر الإعلان' : 'التالي'),
              // ),
            );
          }),
        ],
      ),
    );
  }
}
