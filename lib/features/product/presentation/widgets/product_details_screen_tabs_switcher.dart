import 'package:flutter/material.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_ad_info_tab.dart';
import 'package:okaz/features/product/presentation/widgets/product_details_screen_specs.dart';

class ProductDetailsScreenTabSwitcher extends StatelessWidget {
  final TabController controller;
  const ProductDetailsScreenTabSwitcher({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      child: IndexedStack(
        key: ValueKey(controller.index),
        index: controller.index,
        children: const [
          /// ✅ فقط معلومات الإعلان (بدون ListView داخلي)
          ProductDetailsScreenAdInfoTab(),

          /// ✅ فقط قائمة المواصفات (بدون ListView داخلي)
          ProductDetailsScreenSpecsTab(),
        ],
      ),
    );
  }
}
