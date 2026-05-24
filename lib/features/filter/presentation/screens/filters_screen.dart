import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../controller/filter_controller.dart';
import '../widgets/filters_screen/filters_screen_footer.dart';
import '../widgets/filters_screen/filters_screen_search_filed.dart';
import '../widgets/filters_screen/filters_screen_switch_item.dart';
import '../widgets/filters_screen/filters_screen_wrap_menu.dart';
import '../../../../src/core/utils/extenssions/int_extenssion.dart';
import '../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../src/resourses/font_manager/app_text_style.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text('filters'.tr()),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            ref.read(filterControllerProvider.notifier).closeFilterScreen();
            context.pop();
          },
          icon: Icon(Icons.close),
        ),
        actionsPadding: EdgeInsets.symmetric(
          horizontal: 22,
        ),
        actions: [
          GestureDetector(
            onTap: () => ref
                .read(filterControllerProvider.notifier)
                .clearTempAttributes(),
            child: Text(
              'reset'.tr(),
              style: AppTextStyle.rubikSemiBold14.copyWith(
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
      body: _FiltersScreenContent(),
    );
  }
}

class _FiltersScreenContent extends ConsumerWidget {
  const _FiltersScreenContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref
        .watch(filterControllerProvider
            .select((value) => value.value!.subCategoryAttributes!.value!
                // .where((attr) => attr.attributeId != 'City')))

                ))
        .toList();
    return Column(
      children: [
        Divider(color: AppColors.borderGrey, height: 0),
        Expanded(
          child: ListView.separated(
              itemCount: items.length,
              separatorBuilder: (context, index) => 22.verticalSpace,
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
              itemBuilder: (context, index) {
                // if (index == 0) {
                //   return FiltersScreenSearchFiled();
                // }

                switch (items[index].dataType) {
                  case 'Checkbox':
                    return FiltersScreenSwitchItem(items[index]);

                  case 'Select':
                    return FiltersScreenWrapMenu(
                      subcategoryAttributeModel: items[index],
                    );

                  case 'Text':
                    return FiltersScreenSearchFiled(
                      subcategoryAttributeModel: items[index],
                    );

                  default:
                    return SizedBox();
                }

                // child: Column(
                //   spacing: 22,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     2.verticalSpace,
                //     FiltersScreenSearchFiled(),
                //     FiltersScreenDropDownMenu(
                //       title: 'موديلات ايفون',
                //       items: FiltersController.iphoneModels,
                //       value: state.selectedModel,
                //       onChanged: (val) {
                //         ref
                //             .read(filtersControllerProvider.notifier)
                //             .selectModel(val);
                //       },
                //     ),
                //     FiltersScreenDropDownMenu(
                //       title: 'السعة التخزينية',
                //       items: FiltersController.storageOptions,
                //       value: state.selectedStorage,
                //       onChanged: (val) {
                //         ref
                //             .read(filtersControllerProvider.notifier)
                //             .selectStorage(val);
                //       },
                //     ),

                //     // FiltersScreenWrapMenu(title: 'نوع الشريحة'),
                //     FiltersScreenWrapMenu(title: 'نوع الشريحة'),
                //     FiltersScreenSwitchItem(),
                //     FiltersScreenRadioMenu(),
                //     2.verticalSpace,
                //   ],
                // ),
              }),
        ),
        FiltersScreenFooter(),
      ],
    );
  }
}
