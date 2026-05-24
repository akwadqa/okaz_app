import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../controller/home_controller.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../src/application/router/app_routes.dart';
import '../../../../src/core/shared_widgets/app_toast.dart';
import '../../../../src/infrastructure/storage/local_storage_service.dart';
import '../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../src/resourses/font_manager/app_text_style.dart';

class BottomNavigationBarView extends ConsumerStatefulWidget {
  const BottomNavigationBarView({super.key});

  @override
  ConsumerState<BottomNavigationBarView> createState() =>
      _BottomNavigationBarViewState();
}

final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

class _BottomNavigationBarViewState
    extends ConsumerState<BottomNavigationBarView> {
  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(bottomNavIndexProvider);
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      index: currentIndex,
      backgroundColor: Colors.transparent,
      onTap: (index) {
        if (index == 1) {
          final number =
              ref.read(localStorageServiceProvider).userInfo.mobileNumber;
          final country =
              ref.read(localStorageServiceProvider).userInfo.country ?? '';
          final isValid = (country == 'Qatar' && number.startsWith('974')) ||
              (country == 'Saudi Arabia' && number.startsWith('966'));
          if (isValid) {
            context.go(AppRoutes.addNewProduct);
          } else {
            AppToast.errorToast('change_country_alert'.tr());
            Future.delayed(const Duration(milliseconds: 800), () {
              _bottomNavigationKey.currentState?.setPage(currentIndex);
            });
          }
          return;
        }
        ref.read(bottomNavIndexProvider.notifier).state = index;
      }
      // print(currentIndex);
      ,
      height: 70,
      items: [
        CurvedNavigationBarItem(
          child: Assets.icons.bnbHomeIc.svg(
            colorFilter: ColorFilter.mode(
              currentIndex == 0 ? AppColors.primary : AppColors.grey600,
              BlendMode.srcIn,
            ),
          ),
          label: 'nav_home'.tr(),
          labelStyle: AppTextStyle.rubikMedium12.copyWith(
            color: currentIndex == 0 ? AppColors.primary : AppColors.grey600,
          ),
        ),
        CurvedNavigationBarItem(
          child: Assets.icons.bnbAddIc.svg(
            colorFilter: ColorFilter.mode(
              currentIndex == 1 ? AppColors.primary : AppColors.grey600,
              BlendMode.srcIn,
            ),
          ),
          label: 'nav_add'.tr(),
          labelStyle: AppTextStyle.rubikMedium12.copyWith(
            color: currentIndex == 1 ? AppColors.primary : AppColors.grey600,
          ),
        ),
        CurvedNavigationBarItem(
          child: Assets.icons.settingsIc.svg(
            colorFilter: ColorFilter.mode(
              currentIndex == 2 ? AppColors.primary : AppColors.grey600,
              BlendMode.srcIn,
            ),
          ),
          label: 'nav_settings'.tr(),
          labelStyle: AppTextStyle.rubikMedium12.copyWith(
            color: currentIndex == 2 ? AppColors.primary : AppColors.grey600,
          ),
        ),
        CurvedNavigationBarItem(
          child: Assets.icons.bnbAccountIc.svg(
            colorFilter: ColorFilter.mode(
              currentIndex == 3 ? AppColors.primary : AppColors.grey600,
              BlendMode.srcIn,
            ),
          ),
          label: 'nav_account'.tr(),
          labelStyle: AppTextStyle.rubikMedium12.copyWith(
            color: currentIndex == 3 ? AppColors.primary : AppColors.grey600,
          ),
        ),
      ],
    );
  }
}
