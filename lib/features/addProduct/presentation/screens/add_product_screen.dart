import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/addProduct/domain/model/category_model.dart';
import 'package:okaz/src/core/shared_widgets/custom_button_widget.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

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

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
      backgroundColor: AppColors.background,
elevation: 0,
        title: Text('إضافة إعلان'),
         centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          _ProgressBar(step: state.step),
          Expanded(child: _StepContent(step: state.step)),
          _BottomButtons(step: state.step),
        ],
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
          Text("Step $step from 4",style: AppTextStyle.rubikSemiBold14.copyWith(color: AppColors.primary),),
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
final controller =
    ref.read(addProductControllerProvider.notifier);

final canProceed = state.step == 3
    ? controller.canGoNextForSpecs(mockProductSpecs)
    : controller.canGoNext();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          if (step > 1)
            Expanded(
              child: 
                CustomButtonWidget(
              text:"السابق",
              onTap: () {
                controller .previousStep();
                
              },
              isFiled: false,
              height: 55,
              width: double.infinity,
              color: AppColors.primary,
              backgroundColor:AppColors.secondPrimary,
              radius: 24,
            ),
              
              // OutlinedButton(
              //   onPressed: controller .previousStep,
              //   child: const Text('السابق'),
              // ),
            ),
          if (step > 1) const SizedBox(width: 12),
          Expanded(
            child: 
            CustomButtonWidget(
              text: step == 4 ? 'نشر الإعلان' : 'التالي',
              onTap:
                canProceed
              ? () {
                    {
                      if (step == 4) {
                        // submitProduct();
                      } else {
                        controller.nextStep();
                      }
                    }
                    
                
              }:null,
              isFiled: true,
              height: 55,
              width: double.infinity,
              backgroundColor:canProceed? AppColors.primary:AppColors.gray,
              radius: 24,
            ),
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
          ),
        ],
      ),
    );
  }
}
