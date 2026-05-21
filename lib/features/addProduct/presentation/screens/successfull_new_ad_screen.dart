import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../src/application/router/app_routes.dart';
import '../../../../src/core/shared_widgets/custom_button_widget.dart';
import '../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../src/resourses/font_manager/app_text_style.dart';

class SuccessfullNewAdScreen extends StatelessWidget {
  const SuccessfullNewAdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _SuccessfullNewAdScreenContent(),
    );
  }
}

class _SuccessfullNewAdScreenContent extends StatelessWidget {
  const _SuccessfullNewAdScreenContent();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 30,
        children: [
          Assets.images.successImageAdded.image(),

          Text('ad_added_success_title'.tr(),
              textAlign: TextAlign.center, style: AppTextStyle.rubikSemiBold20),
          Text('ad_added_success_desc'.tr(),
              textAlign: TextAlign.center, style: AppTextStyle.rubikMedium14),
// CustomButtonWidget(
//                 text: "",
//                 onTap: () {
//                   // controller.previousStep();
//                 },
//                 isFiled: false,
//                 height: 55,
//                 width: double.infinity,
//                 color: AppColors.primary,
//                 backgroundColor: AppColors.primary,
//                 radius: 24,
//                  child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       spacing: 12,
//                       children: [
//                         Text(
//                           context.tr("view_ad"),
//                           textAlign: TextAlign.center,
//                           style: Theme.of(context).textTheme.displaySmall!
//                               .copyWith(
//                                 fontSize: 18,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                         ),
//                         Icon(Icons.remove_red_eye_outlined,color: Colors.white,size: 24,),
//                       ],
//                     )
//               ),
          CustomButtonWidget(
            text: "",
            onTap: () {
              context.goNamed(AppRoutes.mainScreen);
            },
            isFiled: true,
            height: 55,
            width: double.infinity,
            backgroundColor: AppColors.white,
            color: AppColors.primary,
            radius: 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 12,
              children: [
                Text(
                  context.tr("go_to_home"),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 18,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Assets.icons.homeIc.svg(color: AppColors.primary),
              ],
            ),
          ),
          //       Padding(
          //   padding: const EdgeInsets.all(16),
          //   child: Column(
          //     children: [
          //         Expanded(
          //           child: CustomButtonWidget(
          //             text: "",
          //             onTap: () {
          //               // controller.previousStep();
          //             },
          //             isFiled: false,
          //             height: 55,
          //             width: double.infinity,
          //             color: AppColors.primary,
          //             backgroundColor: AppColors.secondPrimary,
          //             radius: 24,
          //              child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   spacing: 12,
          //                   children: [
          //                     Text(
          //                       context.tr("view_ad"),
          //                       textAlign: TextAlign.center,
          //                       style: Theme.of(context).textTheme.displaySmall!
          //                           .copyWith(
          //                             fontSize: 16,
          //                             color: Colors.white,
          //                             fontWeight: FontWeight.w500,
          //                           ),
          //                     ),
          //                     Icon(Icons.remove_red_eye_outlined),
          //                   ],
          //                 )
          //           ),

          //           // OutlinedButton(
          //           //   onPressed: controller .previousStep,
          //           //   child: const Text('السابق'),
          //           // ),
          //         ),
          //       Expanded(
          //         child: CustomButtonWidget(
          //           text:"",
          //           onTap: () {

          //                 }
          //               ,
          //           isFiled: true,
          //           height: 55,
          //           width: double.infinity,
          //           backgroundColor:  AppColors.white,
          //           color:  AppColors.primary,
          //           radius: 24,
          //           child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   spacing: 12,
          //                   children: [
          //                     Text(
          //                       context.tr("go_home"),
          //                       textAlign: TextAlign.center,
          //                       style: Theme.of(context).textTheme.displaySmall!
          //                           .copyWith(
          //                             fontSize: 16,
          //                             color: Colors.white,
          //                             fontWeight: FontWeight.w500,
          //                           ),
          //                     ),
          //                     Assets.icons.homeIc.svg(),
          //                   ],
          //                 )
          //               ,
          //         ),
          //         // ElevatedButton(
          //         //   onPressed:canProceed
          //         //       ? () {
          //         //           if (step == 4) {
          //         //             // submitProduct();
          //         //           } else {
          //         //             notifier.nextStep();
          //         //           }
          //         //         }
          //         //       : null, // 🚫 disabled
          //         //   child: Text(step == 4 ? 'نشر الإعلان' : 'التالي'),
          //         // ),
          //       ),
          //     ],
          //   ),
          // ),
          //       Container(
          //         width: double.infinity,
          //         // height: 485,
          //         padding: EdgeInsets.symmetric(vertical: 36),
          //         decoration: BoxDecoration(
          //             color: AppColors.white,
          //             borderRadius: BorderRadius.circular(10),
          //             boxShadow: [
          //               BoxShadow(
          //                 color: AppColors.black.withValues(alpha: .25),
          //                 blurRadius: 4,
          //               )
          //             ]),
          //         child: Column(
          //           spacing: 31,
          //           children: [
          //             Text(
          //               'the_add_publisher'.tr(),
          //               style: AppTextStyle.rubikSemiBold18,
          //               textAlign: TextAlign.center,
          //             ),
          //             Text(
          //               'view_ad_status'.tr(),
          //               style: AppTextStyle.rubikMedium14.copyWith(
          //                   color: AppColors.primary,
          //                   decoration: TextDecoration.underline),
          //             ),
          //             GestureDetector(
          //               onTap: () => context.goNamed(AppRoutes.mainScreen),
          //               child: Text(
          //                 'back_to_home'.tr(),
          //                 style: AppTextStyle.rubikMedium14.copyWith(
          //                     color: AppColors.primary,
          //                     decoration: TextDecoration.underline),
          //               ),
          //             )
          //           ],
          //         ),
          //       )
        ],
      ),
    );
  }
}
