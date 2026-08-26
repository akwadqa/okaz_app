import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../src/core/shared_widgets/app_loader.dart';
import '../../../../../src/core/utils/helper/keyboard_action.dart';
import '../../controller/add_product_controller.dart';
import 'dynamic_attribute_field.dart';

class StepProductInfoView extends ConsumerStatefulWidget {
  const StepProductInfoView({super.key});

  @override
  ConsumerState<StepProductInfoView> createState() =>
      _StepProductInfoViewState();
}

class _StepProductInfoViewState extends ConsumerState<StepProductInfoView> {
  // key = attribute id/title, value = its FocusNode (only number fields)
  final Map<String, FocusNode> _focusNodes = {};

  FocusNode _nodeFor(String key) =>
      _focusNodes.putIfAbsent(key, () => FocusNode());

  bool _isNumber(String dataType) {
    final dt = dataType.toLowerCase();
    return dt == 'number' || dt == 'int' || dt == 'double' || dt == 'numeric';
  }

  @override
  void dispose() {
    for (final node in _focusNodes.values) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final controller = ref.read(addProductControllerProvider.notifier);
    final state = ref.watch(addProductControllerProvider).value!;

    if (state is AsyncLoading) {
      return const Center(child: AppLoader());
    }

    final attributes = state.attributes
        .where((e) => (e.attributeId != 'City' && e.attributeId != 'Area'))
        .toList();

    final otherFilters = attributes.where((e) => e.isMainFilter == 0).toList();
    // Collect focus nodes ONLY for number fields
    final allNodes =
      otherFilters.map((a) => _nodeFor(a.attributeId)).toList();
    for (final a in otherFilters) {
      debugPrint('ATTR: ${a.title} | dataType="${a.dataType}"');
    }
    return KeyboardDone.wrap(
      nodes: allNodes,
      child: ListView.separated(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag, // 👈

          itemCount: otherFilters.length,
          padding: EdgeInsets.symmetric(horizontal: 12),
          separatorBuilder: (_, __) => const SizedBox(height: 16),
          itemBuilder: (context, index) {
            final attr = otherFilters[index];

            return DynamicAttributeField(
              attribute: otherFilters[index],
              focusNode: _nodeFor(attr.attributeId),
            );
          }),
    );

//     return ListView(
//       padding: const EdgeInsets.all(16),
//       children: mockProductSpecs.map((spec) {
//         final value = state.specs[spec.key];
// // ! Just edit example to attributes
//         switch (spec.type) {
//           case ProductSpecType.select:
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 16),
//               child: AddSelectField(
//                 label: spec.title,
//                 hint: context.tr(
//                   'select_value',
//                   namedArgs: {'value': spec.title},
//                 ),
//                 isRequired: spec.required,
//                 value: value,
//                 onTap: () {
//                   showAddSelectSheet<String>(
//                     context: context,
//                     title: context.tr(
//                       'select_value',
//                       namedArgs: {'value': spec.title},
//                     ),
//                     items: spec.options!,
//                     selected: value,
//                     labelBuilder: (v) => v,
//                     onConfirm: (v) => controller.updateSpec(spec.key, v),
//                   );
//                 },
//               ),
//             );

//           case ProductSpecType.toggle:
    // return Container(
    //   padding: EdgeInsets.all(12),
    //   decoration: BoxDecoration(
    //     color: AppColors.white,
    //     borderRadius: BorderRadius.circular(24),
    //     border: Border.all(color: AppColors.grayBorder),
    //   ),
    //   child: SwitchListTile(
    //     contentPadding: EdgeInsets.zero,

    //     thumbColor: WidgetStatePropertyAll(AppColors.white),

    //     inactiveTrackColor: AppColors.stoneGray,
    //     activeTrackColor: AppColors.primary,

    //     value: (value as bool?) ?? false,
    //     title: Text(spec.title),
    //     subtitle: Text(spec.subTitle!),

    //     onChanged: (v) => controller.updateSpec(spec.key, v),
    //   ),
    // );
//         }
//       }).toList(),
//     );
  }
}
