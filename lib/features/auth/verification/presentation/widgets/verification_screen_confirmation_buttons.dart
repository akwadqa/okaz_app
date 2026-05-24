import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../signIn/presentation/controller/sign_in_controller.dart';
import '../controller/verify_otp_controller.dart';
import '../../../../../src/application/router/app_routes.dart';
import '../../../../../src/core/shared_widgets/app_loader.dart';
import '../../../../../src/core/shared_widgets/app_toast.dart';
import '../../../../../src/core/shared_widgets/custom_button_widget.dart';
import '../../../../../src/core/utils/extenssions/widget_extensions.dart';
import '../../../../../src/resourses/color_manager/app_colors.dart';

class VerificationScreenConfirmationButtons extends ConsumerWidget {
  final TextEditingController otp;
  final String phone;
  final GlobalKey<FormState> formKey;
  const VerificationScreenConfirmationButtons(
      {super.key,
      required this.otp,
      required this.phone,
      required this.formKey});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      spacing: 24,
      children: [
        Consumer(builder: (context, ref, child) {
          ref.listen(verifyOtpControllerProvider, (prev, next) {
            if (next is AsyncData && prev is AsyncLoading) {
              // context.maybePop().then((_) {
              debugPrint("Success check");
              // AppToast.successToast('successfullyCompleted'.tr());
              context.go(AppRoutes.mainScreen);
              // context
              //     .pushRoute(VerificationRoute(inputedPhone: _phoneNumber!));
              // _showDialog();
              // });
            }
            if (next is AsyncError && prev is AsyncLoading) {
              // showErrorDialog(context, next.error.toString());
              AppToast.errorToast(next.error.toString());
            }
          });
          final isVisible =
              ref.watch(signInControllerProvider).value!.isVerify ?? true;
          // if (!isVisible) {
          //   return SizedBox(
          //     height: 50,
          //   );
          // }

          final signInProvider = ref.watch(verifyOtpControllerProvider);

          if (signInProvider is AsyncLoading) {
            return AppLoader();
            // const FadeCircleLoadingIndicator();
          }
          return CustomButtonWidget(
            text: 'confirm'.tr(),
            onTap: isVisible
                ? () {
                    FocusScope.of(context).unfocus();

                    // formKey.currentState!.save();
                    // print(otp);
                    final isValid = formKey.currentState!.validate();
                    debugPrint('FORM VALID: $isValid');
                    if (!isValid) return;
                    // formKey.currentState!.save();
                    ref
                        .read(verifyOtpControllerProvider.notifier)
                        .verifyOtp(phone, otp.text);
                  }
                : () {},
            isFiled: true,
            height: 55,
            width: double.infinity,
            backgroundColor: isVisible ? AppColors.primary : AppColors.gray,
            radius: 24,
          );
        }),
        // Consumer(builder: (context, ref, _) {
        //   //? This for make resend code anvisible when send otp success :
        //   ref.listen(
        //       verifyOtpControllerProvider.select(
        //           (val) => val.value?.signinResponseModel), (prev, next) {
        //     if (next is AsyncData) {
        //       ref.read(signInControllerProvider.notifier)
        //         ..makeResendButtonVisible(false)
        //         ..makeConfirmButtonVisible(true);
        //     }
        //   });

        //   //? This for visibility of resend button :
        //   final isVisible =
        //       ref.watch(signInControllerProvider).value!.isResend ?? false;
        //   if (!isVisible) return SizedBox();

        //   final notifier = ref.watch(verifyOtpControllerProvider
        //       .select((val) => val.value?.signinResponseModel));
        //   if (notifier is AsyncLoading) {
        //     return AppLoader();
        //   }
        //   return CustomButtonWidget(
        //     text: 'resend_code'.tr(),
        //     onTap: () {
        //       ref.read(verifyOtpControllerProvider.notifier).resendCoe(phone);
        //     },
        //     isFiled: false,
        //     height: 50,
        //     width: double.infinity,
        //     backgroundColor: AppColors.background,
        //     radius: 10,
        //   );
        // }),
      ],
    ).symmetricPadding(horizontal: 20);
  }
}
