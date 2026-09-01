import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/home/presentation/controller/home_controller.dart';
import 'package:okaz/src/core/shared_widgets/custom_app_bar.dart';
import 'package:okaz/src/core/utils/functions/helper_methods.dart';

class TermsScreen extends ConsumerWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final termsEN = ref.read(homeControllerProvider.select((val) => val
        .value!.homeModel.value!.termsAndConditionsModel!.termsAndConditions));
    final termsAR = ref.read(homeControllerProvider.select((val) => val.value!
        .homeModel.value!.termsAndConditionsModel!.termsAndConditionsAr));
    return Scaffold(
      appBar: CustomDeafultAppbar(title: 'terms_and_conditions'.tr()),
      body: SingleChildScrollView(
        child: Html(
          data: translate(termsAR ?? '', termsEN ?? '',
              context), // تمرير الـ HTML هنا ببساطة
          style: {
            // يمكنك إضافة تعديلات إضافية على التنسيق من داخل فلاتر إذا أردت
            "body": Style(
              margin: Margins.all(16),
              fontSize: FontSize(16.0),
            ),
          },
        ),
      ),
    );
  }
}
