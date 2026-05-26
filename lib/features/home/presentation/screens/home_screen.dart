import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/src/infrastructure/storage/local_storage_service.dart';
import '../../../app/app_service.dart';
import '../../domain/model/home_model/home_model.dart';
import '../controller/home_controller.dart';
import '../widgets/home_screen/home_screen_adds_section.dart';
import '../widgets/home_screen/home_screen_category_section.dart';
import '../widgets/home_screen/home_screen_drawer.dart';
import '../widgets/home_screen/home_screen_search_field.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../src/application/router/app_routes.dart';
import '../../../../src/core/shared_widgets/app_dialogs.dart';
import '../../../../src/core/shared_widgets/app_error_widget.dart';
import '../../../../src/core/shared_widgets/app_loader.dart';
import '../../../../src/core/shared_widgets/native_link_helper.dart';
import '../../../../src/core/utils/extenssions/int_extenssion.dart';
import '../../../../src/core/utils/functions/helper_methods.dart';
import '../../../../src/logger/log_services/dev_logger.dart';
import '../../../../src/resourses/color_manager/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: HomeScreenDrawer(),
      backgroundColor: AppColors.background,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Okaz Market'.tr()),
        backgroundColor: AppColors.background,
        surfaceTintColor: Colors.transparent,
      ),
      body: _HomeScreenContent(),
      // bottomNavigationBar: BottomNavigationBarView(),
    );
  }
}

class _HomeScreenContent extends ConsumerStatefulWidget {
  const _HomeScreenContent();

  @override
  ConsumerState<_HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends ConsumerState<_HomeScreenContent> {
  @override
  void initState() {
    super.initState();
    Future(() {
      ref.read(homeControllerProvider.notifier).getHomeData();
      // verifyLinks();
    });
  }

  void verifyLinks() async {
    bool isVerified = await NativeLinkHelper.checkAndroidLinkStatus();

    if (!isVerified) {
      Dev.logLine("الروابط غير مفعلة، سنوجه المستخدم للإعدادات");
      Future.delayed(const Duration(seconds: 3), () {
        showConfirmationDialog(
          context: context,
          icon: Assets.icons.sendReportIc.svg(),
          title: 'deep_link_dialog_title'.tr(),
          description: 'deep_link_dialog_description'.tr(),
          confirmText: 'deep_link_dialog_confirm'.tr(),
          onConfirm: () {
            context.pop();
            openDeepLinkSettings();
          },
        );
      });
    } else {
      Dev.logLine("كل شيء تمام، الروابط مفعلة تلقائياً");
    }
  }

  @override
  Widget build(BuildContext context) {
    final storage=ref.watch(localStorageServiceProvider);
    final controller = ref.watch(
      homeControllerProvider
          .select((val) => val.value?.homeModel ?? AsyncLoading()),
    );

    ref.listen(
        homeControllerProvider.select(
            (val) => val.value?.homeModel ?? AsyncLoading()), (prev, next) {
      if (next is AsyncData) {
        ref
            .read(appServiceProvider.notifier)
            .checkAppVersion(next.value!.appVersion!);
      }
    });
    return controller.when(
      data: (homeModel) => _buildBody(context, homeModel),
      error: (e, st) => AppErrorWidget(
          onTap: () => ref.read(homeControllerProvider.notifier).getHomeData()),
      loading: () => AppLoader(),
    );
  }

  Widget _buildBody(BuildContext context, HomeModel homeModel) {
    return ListView(
      
      children: [
        HomeScreenSearchFiled(
          title: 'serch_for_any_thing'.tr(),
          onTap: () => context.push(AppRoutes.searchScreen),
        ),
        20.verticalSpace,
       if(homeModel.banners!.isNotEmpty) HomeScreenAddsSection(homeModel: homeModel),
        36.verticalSpace,
        ...homeModel.categories!.map(
          (cat) => HomeScreenCategorySection(
            title: translate(
              cat?.categoryNameAr ?? '',
              cat?.categoryName ?? '',
              context,
            ),
            icon: cat?.icon ?? '',
            category: cat!,
          ),
        ),
      ],
    );
  }
}
