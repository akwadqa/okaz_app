import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../addProduct/presentation/widgets/app_scaled_radio.dart';
import '../../../../src/core/utils/extenssions/int_extenssion.dart';
import '../../../../src/core/utils/extenssions/widget_extensions.dart';
import '../../../../src/infrastructure/storage/local_storage_service.dart';
import '../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../src/resourses/font_manager/app_text_style.dart';

class ChangeCountryBottomSheet extends ConsumerStatefulWidget {
  const ChangeCountryBottomSheet({super.key});

  @override
  ConsumerState<ChangeCountryBottomSheet> createState() =>
      _ChangeCountryBottomSheetState();
}

class _ChangeCountryBottomSheetState
    extends ConsumerState<ChangeCountryBottomSheet> {

  @override
  void initState() {
    super.initState();

  }

  

  @override
  Widget build(BuildContext context) {
    String country =
        ref.watch(localStorageServiceProvider).userInfo.country ?? '';
    return Container(
      padding: EdgeInsets.symmetric(vertical: 22),
      decoration: BoxDecoration(
          color: AppColors.background, borderRadius: BorderRadius.circular(27)),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                context.tr('change_country'),
                style: AppTextStyle.rubikSemiBold20,
              ),
              Spacer(),
              20.verticalSpace,
              GestureDetector(
                onTap: () => context.pop(),
                child: Icon(Icons.close),
              ),
            ],
          ).symmetricPadding(horizontal: 22),
          Divider(
            color: AppColors.dividerColor,
            height: 22,
          ),
          11.verticalSpace,
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            color: AppColors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppScaledRadio<String>(
                  value: 'Saudi Arabia',
                  groupValue: country,
                  onChanged: (val) {
                    ref
                        .read(localStorageServiceProvider)
                        .updateBasicUserInfo(country: val);
                    setState(() {
                      country = val;
                    });
                  },
                ),
                Text(
                  context.tr('saudi_arabia'),
                  style: AppTextStyle.rubikSemiBold18.copyWith(),
                ),
              ],
            ),
          ),
          20.verticalSpace,
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            color: AppColors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppScaledRadio<String>(
                  value: 'Qatar',
                  groupValue: country,
                  onChanged: (val) {
                    ref
                        .read(localStorageServiceProvider)
                        .updateBasicUserInfo(country: val);
                    setState(() {
                      country = val;
                    });
                  },
                ),
                Text(
                  context.tr('qatar'),
                  style: AppTextStyle.rubikSemiBold18.copyWith(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
