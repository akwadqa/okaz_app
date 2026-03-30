import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/addProduct/presentation/widgets/app_scaled_radio.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/core/localization/current_language.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class ChangeLanguageBottomSheet extends ConsumerStatefulWidget {
  const ChangeLanguageBottomSheet({super.key});

  @override
  ConsumerState<ChangeLanguageBottomSheet> createState() =>
      _ChangeLanguageBottomSheetState();
}

class _ChangeLanguageBottomSheetState
    extends ConsumerState<ChangeLanguageBottomSheet> {
  @override
  void initState() {
    super.initState();
    Future(() {
      ref.read(currentLanguageProvider.notifier).getLanguage(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentLang = context.locale.languageCode;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 22),
      decoration: BoxDecoration(
          color: AppColors.background, borderRadius: BorderRadius.circular(27)),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                context.tr('change_language'),
                style: AppTextStyle.rubikSemiBold20.copyWith(),
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
                  value: 'en',
                  groupValue: currentLang,
                  onChanged: (val) {
                    ref
                        .read(currentLanguageProvider.notifier)
                        .changeLanguage(context, val);
                  },
                ),
                Text(
                  context.tr('english'),
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
                  value: 'ar',
                  groupValue: currentLang,
                  onChanged: (val) {
                    ref
                        .read(currentLanguageProvider.notifier)
                        .changeLanguage(context, val);
                  },
                ),
                Text(
                  context.tr('arabic'),
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
