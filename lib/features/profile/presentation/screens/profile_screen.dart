// view/profile_screen.dart
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/filter/presentation/widgets/products_screen/products_screen_product_item.dart';
import 'package:okaz/src/core/shared_widgets/app_empty_data_widget.dart';
import 'package:okaz/src/core/shared_widgets/custom_appbar.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import '../controller/my_profile_controller.dart';
import '../controller/profile_state.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_tab_bar.dart';
import '../widgets/profile_item_card.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(profileControllerProvider);
    final widthS = MediaQuery.of(context).size.width;

    return profileAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text(e.toString())),
      data: (state) {
        final items = state.selectedTab == ProfileTab.myAds
            ? state.myAds
            : state.favorites;

        return Scaffold(
          backgroundColor: AppColors.background,
            appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 65),
        child: CustomAppbar(
          title: context.tr('profile'),
          withBackButton: false,
        ),
      ),
          body: SafeArea(
            child: Column(
              children: [
                const ProfileHeader(),
                ProfileTabBar(
                  selectedTab: state.selectedTab,
                  onTabChanged: (tab) => ref
                      .read(profileControllerProvider.notifier)
                      .changeTab(tab),
                ),
                const SizedBox(height: 12),
              items.isEmpty?
                    AppEmptyDataWidget(text: "no_favorites",height: 150,)
                    :
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: items.length,
                    gridDelegate:
                         SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio:0.55,
                        ),
                    itemBuilder: (_, index) =>
                    ProductsScreenProductItem(item: items[index])
                        // ProfileItemCard(item: items[index]),
                  ),
                ),
              ],
            ),
          ),
        );

        //  GridView.builder(
        //   itemCount: items.length,
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //   ),
        //   itemBuilder: (_, i) => ProfileItemCard(item: items[i]),
        // );
      },
    );
    // return Scaffold(
    //   backgroundColor: Colors.grey.shade100,
    //   body: SafeArea(
    //     child: Column(
    //       children: [
    //         const ProfileHeader(),
    //         ProfileTabBar(
    //           selectedTab: state.selectedTab,
    //           onTabChanged: (tab) =>
    //               ref.read(profileControllerProvider.notifier).changeTab(tab),
    //         ),
    //         const SizedBox(height: 12),
    //         Expanded(
    //           child: GridView.builder(
    //             padding: const EdgeInsets.symmetric(horizontal: 16),
    //             itemCount: items.length,
    //             gridDelegate:
    //                 const SliverGridDelegateWithFixedCrossAxisCount(
    //               crossAxisCount: 2,
    //               crossAxisSpacing: 12,
    //               mainAxisSpacing: 12,
    //               childAspectRatio: 0.7,
    //             ),
    //             itemBuilder: (_, index) =>
    //                 ProfileItemCard(item: items[index]),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
