import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/settings/presentation/controller/settings_controller.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/shared_widgets/app_dialogs.dart';
import 'package:okaz/src/core/shared_widgets/custom_appbar.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/infrastructure/storage/local_storage_service.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import '../widgets/change_language_bottom_sheet.dart';
import '../widgets/settings_item_card.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authAsync = ref.watch(isAuthenticatedProvider);
    final settingsAsync = ref.watch(settingsControllerProvider);

    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 65),
          child: CustomAppbar(
            title: context.tr('settings'),
            withBackButton: false,
          ),
        ),
        body: authAsync.when(
          loading: () => Center(child: CircularProgressIndicator()),
          error: (e, _) => Center(child: Text('something_went_wrong'.tr())),
          data: (isAuthenticated) {
            return _buildContent(context, ref, isAuthenticated);
          },
        ));
  }

  Widget _buildContent(
    BuildContext context,
    WidgetRef ref,
    bool isAuthenticated,
  ) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        spacing: 20,
        children: [
          // if (isAuthenticated)
          //   SettingsItemCard(
          //     title: 'edit_my_profile',
          //     icon: Assets.icons.editProfileIc,
          //   ),

          // Always visible
          GestureDetector(
            onTap: () => showModalBottomSheet(
              context: context,
              builder: (_) => ChangeLanguageBottomSheet(),
            ),
            child: SettingsItemCard(
              title: 'change_language'.tr(),
              icon: Assets.icons.langIc,
            ),
          ),

          if (isAuthenticated) ...[
            SettingsItemCard(
              title: 'notifications'.tr(),
              icon: Assets.icons.notificationIc,
            ),
            SettingsItemCard(
              title: 'logout'.tr(),
              icon: Assets.icons.logoutIc,
              onTap: () {
                showConfirmationDialog(
                  context: context,
                  title: "logout_title",
                  description: "logout_description",
                  confirmText: "logout_confirm",
                  confirmColor: AppColors.primary,
                  icon: Assets.icons.logoutIc.svg(height: 25, width: 25),
                  onConfirm: () async {
                    await ref
                        .read(settingsControllerProvider.notifier)
                        .logout();
                    context.pushReplacement(AppRoutes.signInScreen);
                    // delete user logic
                  },
                  deleteAcc: false,
                );
              },
            ),
            SettingsItemCard(
              title: 'delete_user',
              icon: Assets.icons.deleteIc,
              onTap: () {
                showConfirmationDialog(
                  context: context,
                  deleteAcc: true,
                  title: "delete_user_title",
                  description: "delete_user_description",
                  confirmText: "delete_user_confirm",
                  confirmColor: AppColors.primary,
                  icon: Assets.icons.deleteIc.svg(height: 25, width: 25),
                  onConfirm: () {
                    // delete user logic
                    ref
                        .read(settingsControllerProvider.notifier)
                        .deleteAccount();
                  },
                );
              },
            ),
            100.verticalSpace,
          ] else ...[
            SettingsItemCard(
                title: 'login_required',
                icon: Assets.icons.logoutIc,
                onTap: () {
                  context.pushReplacement(AppRoutes.signInScreen);
                })
          ]
        ],
      ),
    );
  }
}

  // @override
  // Widget build(BuildContext context, WidgetRef ref) {
  //   // final settingsState = ref.watch(settingsControllerProvider);
  //   final isAuthenticated = ref.watch(isAuthenticatedProvider).value;
  //   return Scaffold(
  //     backgroundColor: AppColors.background,
  //     appBar: PreferredSize(
  //       preferredSize: const Size(double.infinity, 65),
  //       child: CustomAppbar(
  //         title: context.tr('settings'),
  //         withBackButton: false,
  //       ),
  //     ),
  //     body: SingleChildScrollView(
  //       padding: const EdgeInsets.symmetric(vertical: 12),
  //       child: Column(
  //         spacing: 20,
  //         children: [
  //           // SettingsProfileHeader(
  //           //   name: localStorage.userInfo.fullName,
  //           // ),

  //           // const SettingsSectionTitle(title: 'account_details'),
  //           if (isAuthenticated ?? false)
  //             SettingsItemCard(
  //               title: 'edit_my_profile',
  //               icon: Assets.icons.editProfileIc,
  //             ),

  //           // const Divider(),
  //           // const SettingsSectionTitle(title: 'help_center'),
  //           GestureDetector(
  //             onTap: () => showModalBottomSheet(
  //               context: context,
  //               builder: (context) => ChangeLanguageBottomSheet(),
  //             ),
  //             child: SettingsItemCard(
  //               title: 'change_language'.tr(),
  //               icon: Assets.icons.langIc,
  //             ),
  //           ),

            // SettingsItemCard(
            //   title: 'pricing_services'.tr(),
            //   icon: Assets.icons.privacyIc,
            // ),

  //           // SettingsItemCard(
  //           //   title: 'Dark Mode',
  //           //   trailing: Switch(value: false, onChanged: (_) {}),
  //           // ),
  //           // SettingsItemCard(
  //           //   title: 'notification'.tr(),
  //           //   trailing: Padding(
  //           //     padding: const EdgeInsets.symmetric(vertical: 10.0),
  //           //     child: SizedBox(
  //           //       height: 10,
  //           //       child: Switch(
  //           //         value: settingsState.value?.notificationState ?? false,
  //           //         onChanged: (val) {
  //           //           ref
  //           //               .read(settingsControllerProvider.notifier)
  //           //               .onNotificationChange(val);
  //           //         },
  //           //         activeThumbColor: AppColors.white,
  //           //         activeTrackColor: AppColors.primary,
  //           //         inactiveThumbColor: AppColors.white,
  //           //         inactiveTrackColor: AppColors.gray,
  //           //       ),
  //           //     ),
  //           //   ),
  //           //   icon: Assets.icons.notificationIc,
  //           // ),
  //         if (isAuthenticated??false)? 
  //         [
  //           SettingsItemCard(
  //             title: 'logout'.tr(),
  //             icon: Assets.icons.logoutIc,
  //             onTap: () {
  //               showConfirmationDialog(
  //                 context: context,
  //                 title: "logout_title",
  //                 description: "logout_description",
  //                 confirmText: "logout_confirm",
  //                 confirmColor: AppColors.primary,
  //                 icon: Assets.icons.logoutIc.svg(height: 25, width: 25),
  //                 onConfirm: () {
  //                   ref.read(settingsControllerProvider.notifier).logout();

  //                   // delete user logic
  //                 },
  //                 deleteAcc: false,
  //               );
  //             },
  //           ),
  //           SettingsItemCard(
  //             title: 'delete_user',
  //             icon: Assets.icons.deleteIc,
  //             onTap: () {
  //               showConfirmationDialog(
  //                 context: context,
  //                 deleteAcc: true,
  //                 title: "delete_user_title",
  //                 description: "delete_user_description",
  //                 confirmText: "delete_user_confirm",
  //                 confirmColor: AppColors.primary,
  //                 icon: Assets.icons.deleteIc.svg(height: 25, width: 25),
  //                 onConfirm: () {
  //                   // delete user logic
  //                   ref
  //                       .read(settingsControllerProvider.notifier)
  //                       .deleteAccount();
  //                 },
  //               );
  //             },
  //           ),
  //           100.verticalSpace,
  //        ] :  SettingsItemCard(
  //             title: 'pricing_services'.tr(),
  //             icon: Assets.icons.privacyIc,
  //           ),],
  //       ),
  //     ),
  //   );
  // }

