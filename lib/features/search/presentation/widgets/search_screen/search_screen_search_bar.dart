import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../home/presentation/widgets/home_screen/home_screen_search_field.dart';
import '../../controller/search_controller.dart';
import '../../../../../src/core/utils/extenssions/widget_extensions.dart';


class SearchScreenSearchBar extends ConsumerWidget {
  const SearchScreenSearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HomeScreenSearchFiled(
      onChanged: (val) {
        ref.read(searchControllerProvider.notifier).search = val;
        if (val.isNotEmpty) {
          ref.read(searchControllerProvider.notifier).fetch(page: 1);
        }
      },
      title: 'search_for_product'.tr(),
      withPadding: false,
    ).symmetricPadding(horizontal: 16);
  }
}
