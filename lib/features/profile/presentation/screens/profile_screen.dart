// view/profile_screen.dart
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/filter/presentation/widgets/products_screen/products_screen_product_item.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/features/profile/domain/model/post_model_mapper.dart';
import 'package:okaz/features/settings/presentation/widgets/settings_item_card.dart';
import 'package:okaz/features/update_post/presentaion/controller/update_post_controller.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/shared_widgets/app_dialogs.dart';
import 'package:okaz/src/core/shared_widgets/app_empty_data_widget.dart';
import 'package:okaz/src/core/shared_widgets/app_loader.dart';
import 'package:okaz/src/core/shared_widgets/custom_appbar.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/functions/helper_methods.dart';
import 'package:okaz/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import '../../../../src/core/shared_widgets/app_pagination_widget.dart';
import '../../../../src/core/shared_widgets/auht_guard.dart';
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
    final controller = ref.read(profileControllerProvider.notifier);
    ref.watch(updatePostControllerProvider);
    final widthS = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.background,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 65),
        child: CustomAppbar(
          title: context.tr('profile'),
          withBackButton: false,
        ),
      ),
      body: AuthGuard(
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              const ProfileHeader(),
              12.verticalSpace,
              ProfileTabBar(
                selectedTab:
                    profileAsync.value?.selectedTab ?? ProfileTab.myAds,
                onTabChanged: (tab) =>
                    ref.read(profileControllerProvider.notifier).changeTab(tab),
              ),
              const SizedBox(height: 12),
              profileAsync.when(
                loading: () => const Padding(
                    padding: EdgeInsetsGeometry.only(top: 180),
                    child: AppLoader()),
                error: (e, _) => Center(child: Text(e.toString())),
                data: (state) {
                  final items = state.selectedTab == ProfileTab.myAds
                      ? state.myAds.toProductDetailsList(false)
                      : state.favorites.toProductDetailsList(true);
                  // Dev.logLine("state.myAds");
                  // Dev.logList(state.myAds);
                  // Dev.logLine("state.myAfavoritesds");

                  // Dev.logList(state.favorites);
                  // Dev.logLine("state.items");

                  // Dev.logList(items);
                  if (items.isEmpty) {
                    return AppEmptyDataWidget(text: "no_items", height: 150);
                  }

                  return Expanded(
                    child: AppPaginationWidget(
                      onLoading: (page) async =>
                          state.selectedTab == ProfileTab.myAds
                              ? await controller.loadNextMyPostsPage()
                              : await controller.loadNextFavoritesPage(),
                      onRefresh: () async =>
                          await controller.refreshCurrentTab(),
                      enablePullDown: true,
                      child: GridView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: items.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 0.5,
                        ),
                        itemBuilder: (_, index) => ProductsScreenProductItem(
                          item: items[index],
                          onLongPress: state.selectedTab == ProfileTab.myAds
                              ? () {
                                  _showPostActionsSheet(
                                      context, items[index], ref);
                                }
                              : null,
                        ),
                        // ProfileItemCard(item: items[index]),
                      ),
                    ),
                  );

                  // Expanded(
                  //   child: GridView.builder(
                  //     padding: const EdgeInsets.symmetric(horizontal: 16),
                  //     itemCount: items.length,
                  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //       crossAxisCount: 2,
                  //       crossAxisSpacing: 16,
                  //       mainAxisSpacing: 16,
                  //       childAspectRatio: 0.5,
                  //     ),
                  //     itemBuilder: (_, index) => ProductsScreenProductItem(
                  //       item: items[index],
                  //       onLongPress: state.selectedTab == ProfileTab.myAds
                  //           ? () {
                  //               _showPostActionsSheet(
                  //                   context, items[index], ref);
                  //             }
                  //           : null,
                  //     ),
                  //     // ProfileItemCard(item: items[index]),
                  //   ),
                  // );

                  //  GridView.builder(
                  //   itemCount: items.length,
                  //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 2,
                  //   ),
                  //   itemBuilder: (_, i) => ProfileItemCard(item: items[i]),
                  // );
                },
              )
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
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> _showPostActionsSheet(
      BuildContext context, ProductDetailsModel post, WidgetRef ref) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.bottomSheetBackground,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).padding.bottom + 20, top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 20),
            SettingsItemCard(
              onTap: () {
                context.pop();
                context.push(AppRoutes.productDetailsScreen, extra: post.name);
              },
              title: 'post_details'.tr(),
              icon: Assets.icons.eyeRedIs,
              trailing: const SizedBox(),
            ),
            12.verticalSpace,
            SettingsItemCard(
              onTap: () {
                context.pop();
                ref
                    .read(updatePostControllerProvider.notifier)
                    .setPostData(post);
                context.push(AppRoutes.updatePost);
              },
              title: 'edit_post'.tr(),
              icon: Assets.icons.editPostIc,
              trailing: const SizedBox(),
            ),
            12.verticalSpace,
            SettingsItemCard(
              title: 'share_post'.tr(),
              onTap: () => sharePost(
                  imageUrl: ServicesUrls.imageUrl +
                      (post.image ?? post.images?.first.image ?? ''),
                  postId: post.name ?? 'id',
                  price: post.price.toString(),
                  ref: ref,
                  title: post.title ?? 'title'),
              icon: Assets.icons.sharePostIc,
              trailing: const SizedBox(),
            ),
            12.verticalSpace,
            SettingsItemCard(
              title: 'delete_post'.tr(),
              onTap: () {
                context.pop();
                showDeletePosttDialog(context, post.name ?? 'id');
              },
              icon: Assets.icons.deletePostIc,
              trailing: const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
