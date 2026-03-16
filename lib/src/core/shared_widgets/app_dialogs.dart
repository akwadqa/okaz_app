import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/comment/presentation/controller/comment_controller.dart';
import 'package:okaz/features/product/presentation/controller/product_controller.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/shared_widgets/app_loader.dart';
import 'package:okaz/src/core/shared_widgets/custom_button_widget.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/core/utils/validator/app_validation.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class AppDialogs {
  AppDialogs._();

  static Future<void> loading(
    BuildContext context, {
    bool dismissible = false,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: dismissible,
      useRootNavigator: true,
      builder: (_) => const Center(child: _LoadingIndicator()),
    );
  }

  static void close(BuildContext context) {
    if (Navigator.of(context, rootNavigator: true).canPop()) {
      Navigator.of(context, rootNavigator: true).pop();
    }
  }

  static Future<void> success(
    BuildContext context, {
    required String title,
    String? message,
    Widget? child,
    String okText = 'ok',
    bool dismissible = true,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: dismissible,
      builder: (_) => _ResultDialog(
        icon: const Icon(Icons.check_circle, color: Colors.green, size: 24),
        title: title,
        message: message,
        okText: okText,
        child: child,
      ),
    );
  }

  static Future<void> error(
    BuildContext context, {
    required String title,
    String? message,
    Widget? child,
    String okText = 'ok',
    bool dismissible = true,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: dismissible,
      builder: (_) => _ResultDialog(
        icon: const Icon(Icons.cancel, color: Colors.red, size: 24),
        title: title,
        message: message,
        okText: okText,
        child: child,
      ),
    );
  }

  static Future<bool> confirm(
    BuildContext context, {
    required String title,
    String? message,
    Widget? child,
    String cancelText = 'cancel',
    String confirmText = 'confirm',
    bool destructive = false,
    bool dismissible = true,
  }) async {
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: dismissible,
      builder: (_) => _ConfirmDialog(
        title: title,
        message: message,
        cancelText: cancelText,
        confirmText: confirmText,
        destructive: destructive,
        child: child,
      ),
    );
    return result ?? false;
  }
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator();

  @override
  Widget build(BuildContext context) {
    final bg = Theme.of(context).dialogTheme.backgroundColor;
    return Material(
      color: Colors.black38,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: bg,
            borderRadius: BorderRadius.circular(16),
          ),
          child: SizedBox(width: 48, height: 48, child: AppLoader()),
        ),
      ),
    );
  }
}

class _ResultDialog extends StatelessWidget {
  final Widget icon;
  final String title;
  final String? message;
  final Widget? child;
  final String okText;

  const _ResultDialog({
    required this.icon,
    required this.title,
    this.message,
    this.child,
    required this.okText,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleMedium;
    final bodyStyle = Theme.of(context).textTheme.bodyMedium;

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      titlePadding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      contentPadding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
      actionsPadding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
      title: Row(
        children: [
          icon,
          const SizedBox(width: 8),
          Expanded(child: Text(title, style: titleStyle)),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (message != null) Text(message!, style: bodyStyle),
          if (message != null && child != null) const SizedBox(height: 12),
          if (child != null) child!,
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(okText.tr()),
        ),
      ],
    );
  }
}

class _ConfirmDialog extends StatelessWidget {
  final String title;
  final String? message;
  final Widget? child;
  final String cancelText;
  final String confirmText;
  final bool destructive;

  const _ConfirmDialog({
    required this.title,
    this.message,
    this.child,
    required this.cancelText,
    required this.confirmText,
    required this.destructive,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleMedium;
    final bodyStyle = Theme.of(context).textTheme.bodyMedium;

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      titlePadding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      contentPadding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
      actionsPadding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
      title: Text(title, style: titleStyle),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (message != null) Text(message!, style: bodyStyle),
          if (message != null && child != null) const SizedBox(height: 12),
          if (child != null) child!,
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text(cancelText.tr()),
        ),
        FilledButton(
          style: destructive
              ? FilledButton.styleFrom(backgroundColor: Colors.red)
              : null,
          onPressed: () => Navigator.pop(context, true),
          child: Text(confirmText.tr()),
        ),
      ],
    );
  }
}

Future<void> showCustomDialog({
  required BuildContext context,
  required Widget title,
  Widget? icon,
  bool? withDismiss,
}) {
  return showDialog(
    context: context,
    barrierDismissible: withDismiss ?? true,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 300, // Replace with appropriate fixed or dynamic size
            maxHeight: 400,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                icon ?? SizedBox(),
                28.verticalSpace,
                title,
                // Text(
                //   title,
                //   textAlign: TextAlign.center,
                //   style: Theme.of(context)
                //       .textTheme
                //       .displayLarge!
                //       .copyWith(fontSize: 22),
                // ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Future<void> showAutoClosingDialog(BuildContext context, String message) async {
  Timer timer;

  // Start timer to auto-close the dialog
  timer = Timer(Duration(seconds: 3), () {
    Navigator.of(context).pop();
  });

  await showDialog(
    context: context,
    barrierDismissible: true, // User can still tap outside to close
    builder: (context) => AlertDialog(
      title: Text(
        message,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 16,
              // fontWeight: FontWeight.w700,
              // color: Colors.grey,
            ),
      ).centered(),
      icon: Icon(Icons.error, color: AppColors.darkRed, size: 50),
      actions: [
        TextButton(
          onPressed: () {
            if (timer.isActive) timer.cancel();
            Navigator.of(context).pop(); // User manually closes
          },
          child: Text(
            'ok'.tr(),
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
          ).centered(),
        ),
      ],
    ),
  ).then((val) {
    if (timer.isActive) {
      timer.cancel();
    }
  });
}

Dialog showYesNowChoicesDialog(
  BuildContext context, {
  required String title,
  required String dsc,
  required VoidCallback yesButton,
  VoidCallback? noButton,
}) {
  return Dialog(
    insetPadding: EdgeInsets.symmetric(horizontal: 20),
    backgroundColor: Colors.white.withOpacity(0.8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        40.verticalSpace,
        Text(
          title.tr(),
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                // color: Colors.grey,
              ),
        ).centered(),
        40.verticalSpace,
        Text(
          dsc.tr(),
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 14,
                color: AppColors.darkGray,
                fontWeight: FontWeight.w500,
              ),
        ).centered(),
        40.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: CustomButtonWidget(
                text: context.tr("yes"),
                onTap: yesButton,
                backgroundColor: AppColors.black,
                isFiled: true,
                height: 45,
                radius: 12,
                width: MediaQuery.sizeOf(context).width,
              ),
            ),
            20.horizontalSpace,
            Flexible(
              child: CustomButtonWidget(
                text: context.tr("no"),
                onTap: noButton ??
                    () {
                      Navigator.pop(context);
                    },
                color: AppColors.black,
                isFiled: false,
                // borderColor: AppColors.darkGray,
                height: 45,
                radius: 12,
                width: MediaQuery.sizeOf(context).width,
              ),
            ),
          ],
        ),
      ],
    ).symmetricPadding(horizontal: 20, vertical: 25),
  );
}

Future<void> showConfirmationDialog({
  required BuildContext context,
  required String title,
  required String description,
  required String confirmText,
  required VoidCallback onConfirm,
  required bool deleteAcc,
  String cancelText = "cancel",
  Widget? icon,
  bool barrierDismissible = true,
  bool showCloseIcon = true,
  Color confirmColor = AppColors.primary,
}) {
  return showDialog(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (_) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 30, 24, 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (icon != null)
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.primaryOpacity.withAlpha(100),
                      child: icon,
                    ),
                  20.verticalSpace,

                  // Title
                  Text(
                    title.tr(),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                  ),

                  12.verticalSpace,

                  // Description
                  Text(
                    description.tr(),
                    textAlign: TextAlign.center,
                    style: AppTextStyle.interRegular16,
                  ),

                  30.verticalSpace,

                  // Buttons
                  Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: CustomButtonWidget(
                          text: cancelText.tr(),
                          isFiled: false,
                          backgroundColor: AppColors.white,
                          color: AppColors.primary,
                          radius: 24,
                          height: 45,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          width: MediaQuery.sizeOf(context).width,
                        ),
                      ),
                      12.horizontalSpace,
                      Consumer(
                        builder: (context, ref, child) {
                          // ref.listen(settingsControllerProvider, (prev, next) {
                          //   final current = deleteAcc
                          //       ? next.value?.deleteAccountState
                          //       : next.value?.logoutState;
                          //   if (current is AsyncData) {
                          //     // context.maybePop().then((_) {
                          //     Dev.logSuccess("Success check");
                          //     // Navigator.pop(context);

                          //     context.pushReplacement(AppRoutes.signInScreen);
                          //     // _showDialog();
                          //     BotToast.showText(
                          //       text: 'successful_check'.tr(),
                          //       contentColor: AppColors.green,
                          //     );

                          //     // });
                          //   } else if (current is AsyncError) {
                          //     showErrorDialog(context, current.error.toString());
                          //   }
                          // });

                          // final provider = ref.watch(settingsControllerProvider);
                          // final current = deleteAcc
                          //     ? provider.value?.deleteAccountState
                          //     : provider.value?.logoutState;
                          // if (current is AsyncLoading) {
                          //   return Flexible(flex: 2, child: AppLoader());
                          //   // const FadeCircleLoadingIndicator();
                          // }
                          return Flexible(
                            flex: 2,
                            child: CustomButtonWidget(
                              text: confirmText.tr(),
                              isFiled: true,
                              backgroundColor: confirmColor,
                              radius: 24,
                              height: 45,
                              onTap: () {
                                onConfirm();
                              },
                              width: MediaQuery.sizeOf(context).width,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Close (X) Button
            if (showCloseIcon)
              Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close, size: 20),
                ),
              ),
          ],
        ),
      );
    },
  );
}

Future<void> showErrorDialog(BuildContext context, String message) {
  return showCustomDialog(
    context: context,
    title: Text(message),
    icon: Icon(Icons.error, color: AppColors.darkRed, size: 50),
  );
}

void showReportDialog(
    BuildContext context, TextEditingController controller, String postId) {
  final key = GlobalKey<FormState>();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Container(
          width: 345,
          height: 515,
          decoration: BoxDecoration(
            color: const Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: const Color(
                  0xFF94A3B2,
                ).withOpacity(0.15),
                blurRadius: 12,
                offset: const Offset(0, 6), // 0px 6px 12px
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  icon: const Icon(Icons.close, size: 24, color: Colors.black),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    Container(
                      width: 47,
                      height: 47,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF6EAE5),
                        shape: BoxShape.circle,
                      ),
                      child: Center(child: Assets.icons.sendReportIc.svg()),
                    ),
                    const SizedBox(height: 20),
                    Text('product_details_report_ad'.tr(),
                        style: AppTextStyle.rubikSemiBold18
                            .copyWith(color: AppColors.primary)),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('report_reason_title'.tr(),
                            style: AppTextStyle.rubikSemiBold16),
                        const SizedBox(height: 4),
                        Text('report_reason_description'.tr(),
                            style: AppTextStyle.rubikRegular14
                                .copyWith(color: AppColors.grey600)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Form(
                      key: key,
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(color: const Color(0xFFE8E8E8)),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: TextFormField(
                          controller: controller,
                          validator: nameValidation(context),
                          maxLines: 4,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            hintText: 'report_details_hint'.tr(),
                            hintStyle: AppTextStyle.rubikRegular14
                                .copyWith(color: AppColors.grayHint),
                            border: InputBorder.none,
                            errorBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Consumer(builder: (context, ref, _) {
                      ref.listen(
                          productControllerProvider
                              .select((val) => val.value!.sendReport),
                          (previous, next) {
                        if (next is AsyncError) {
                          showErrorDialog(context, next.error.toString());
                        }
                        if (next is AsyncData) {
                          context.pop();
                        }
                      });
                      final reportController = ref.watch(
                          productControllerProvider
                              .select((val) => val.value!.sendReport));
                      if (reportController is AsyncLoading) {
                        return AppLoader();
                      }
                      return ElevatedButton(
                        onPressed: () {
                          if (key.currentState!.validate()) {
                            ref
                                .read(productControllerProvider.notifier)
                                .sendReport(postId, controller.text);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          minimumSize: const Size(301, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'send_report'.tr(),
                          style: AppTextStyle.rubikBold20
                              .copyWith(color: AppColors.white),
                        ),
                      );
                    }),
                    const SizedBox(height: 12),
                    OutlinedButton(
                      onPressed: () => context.pop(),
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(301, 51),
                        side: const BorderSide(color: Color(0xFFB8502E)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Text(
                        'cancel'.tr(),
                        style: AppTextStyle.rubikBold20
                            .copyWith(color: AppColors.primary),
                      ),
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

void showDeleteCommentDialog(
    BuildContext context, String commentId, String postId) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Container(
          // الأبعاد حسب CSS
          width: 345,
          height: 260,
          decoration: BoxDecoration(
            color: const Color(0xFFF5F5F5), // background: #F5F5F5
            borderRadius: BorderRadius.circular(12), // border-radius: 12px
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF94A3B2).withOpacity(0.15),
                blurRadius: 12,
                offset: const Offset(0, 6), // 0px 6px 12px
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                top: 15,
                left: 15,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close, size: 16, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 25),

                    Container(
                      width: 47,
                      height: 47,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF6EAE5),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.delete_outline_rounded,
                          color: Color(0xFFB8502E),
                          size: 24,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Text('delete_comment_title'.tr(),
                        textAlign: TextAlign.center,
                        style: AppTextStyle.rubikSemiBold18
                            .copyWith(color: AppColors.primary)),

                    const SizedBox(height: 20), // المسافة للوصف (top: 130px)

                    // النص الفرعي
                    Text('delete_comment_description'.tr(),
                        textAlign: TextAlign.center,
                        style: AppTextStyle.rubikRegular16),

                    const Spacer(),

                    // مجموعة الأزرار (Group 1000006978)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // زر إلغاء (الأبيض بحدود برتقالية)
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => Navigator.pop(context),
                            style: OutlinedButton.styleFrom(
                              fixedSize: const Size(138.14, 45.45),
                              side: const BorderSide(color: Color(0xFFB8502E)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            child: Text(
                              'cancel'.tr(),
                              style: TextStyle(
                                color: Color(0xFFB8502E),
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 15),

                        Expanded(
                          child: Consumer(builder: (context, ref, _) {
                            ref.listen(
                                commentControllerProvider
                                    .select((val) => val.value!.deleteComment),
                                (previous, next) {
                              if (next is AsyncError) {
                                showErrorDialog(context, next.error.toString());
                              }
                              if (next is AsyncData) {
                                context.pop();
                                ref
                                    .read(productControllerProvider.notifier)
                                    .getProductDetails(postId);
                              }
                            });
                            final commentController = ref.watch(
                                commentControllerProvider
                                    .select((val) => val.value!.deleteComment));
                            if (commentController is AsyncLoading) {
                              return AppLoader();
                            }
                            return ElevatedButton(
                              onPressed: () {
                                ref
                                    .read(commentControllerProvider.notifier)
                                    .deleteComment(commentId);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFB8502E),
                                fixedSize: const Size(138.14, 45.45),
                                elevation: 0,
                                padding: EdgeInsets.zero,
                                shadowColor:
                                    const Color(0xFFB8502E).withOpacity(0.2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                              ),
                              child: Text(
                                'delete'.tr(),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25), // التوازن السفلي
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
