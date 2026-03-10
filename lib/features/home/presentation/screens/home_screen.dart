import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/home/domain/model/home_model/home_model.dart';
import 'package:okaz/features/home/presentation/controller/home_controller.dart';
import 'package:okaz/features/home/presentation/widgets/bottom_navigation_bar_view.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_adds_section.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_category_section.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_drawer.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_search_field.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/shared_widgets/app_error_widget.dart';
import 'package:okaz/src/core/shared_widgets/app_loader.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/core/utils/functions/helper_methods.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

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
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(
      homeControllerProvider.select((val) => val.value!.homeModel),
    );
    return controller.when(
      data: (homeModel) => _buildBody(context, homeModel),
      error: (e, st) =>
          AppErrorWidget(onTap: () => context.push(AppRoutes.productsScreen)),
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
        HomeScreenAddsSection(homeModel: homeModel),
        36.verticalSpace,
        ...homeModel.categories!
            .map(
              (cat) => HomeScreenCategorySection(
                title: translate(
                  cat?.categoryNameAr ?? '',
                  cat?.categoryName ?? '',
                  context,
                ),
                icon: Assets.icons.electronicIc.svg(),
                category: cat!,
              ),
            )
            .toList(),
      ],
    );
  }
}
