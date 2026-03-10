import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/addProduct/domain/model/subcategory/subcategory_attribute_model.dart';
import 'package:okaz/src/core/utils/enums/sub_categories_attributes_type.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';
import 'package:queen_validators/queen_validators.dart';

import '../../controller/add_product_controller.dart';
import '../../controller/add_product_state.dart';
import '../add_select_bottom_sheet.dart';
import '../add_select_field.dart';

class DynamicAttributeField extends ConsumerWidget {
  final SubcategoryAttributeModel attribute;

  const DynamicAttributeField({
    super.key,
    required this.attribute,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(addProductControllerProvider.notifier);
    final state = ref.watch(addProductControllerProvider).value!;

    final currentValue =
        state.specs[attribute.title]; // or attribute.attributeId

    final type = parseFieldType(attribute.dataType);

    switch (type) {
      case AttributeFieldType.dropdown:
        return _buildDropdown(context, currentValue, controller);

      case AttributeFieldType.text:
        return _buildTextField(context, currentValue, controller, true);

      case AttributeFieldType.checkbox:
        return _buildToggle(attribute, currentValue, controller,state);

      case AttributeFieldType.toggle:
        return _buildToggle(attribute, currentValue, controller,state);
    }
  }

  Widget _buildDropdown(
    // SubcategoryAttributeModel attribute,
    BuildContext context,
    dynamic value,
    AddProductController controller,
  ) {
    return AddSelectField(
      label: attribute.title,
      isRequired: true,
      hint: 'select_sub_category',
      value: value,
      onTap: () {
        showAddSelectSheet<String>(
          context: context,
          title: attribute.title.tr(),
          items: attribute.values,
          selected: value,
          labelBuilder: (v) => v,
          onConfirm: (v) {
            controller.updateSpec(attribute.title, v);
          },
        );
      },
    );
    // Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Text(attribute.title),
    //     const SizedBox(height: 8),
    //     DropdownButtonFormField<String>(
    //       value: value,
    //       items: attribute.values
    //           .map(
    //             (v) => DropdownMenuItem(
    //               value: v,
    //               child: Text(v),
    //             ),
    //           )
    //           .toList(),
    //       onChanged: (val) {
    //         controller.updateSpec(attribute.title, val);
    //       },
    //     ),
    //   ],
    // );
  }

  Widget _buildTextField(BuildContext context, dynamic value,
      AddProductController controller, bool isRequired) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(attribute.title, style: AppTextStyle.rubikMedium16),
            if (isRequired)
              const Text(
                ' *',
                style: TextStyle(color: AppColors.primary, fontSize: 18),
              ),
          ],
        ),
        12.verticalSpace,
        TextFormField(
          style: TextStyle(fontSize: 16, color: AppColors.black800),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: value,
            hintStyle: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(fontSize: 14, color: AppColors.grey600),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryBorder),
              borderRadius: BorderRadius.circular(24),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryBorder),
              borderRadius: BorderRadius.circular(24),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryBorder),
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          textInputAction: TextInputAction.next,
          validator: qValidator([
            IsRequired(context.tr('required')),
            // IsEmail(context.tr('name_valdation_msg'))
          ]),
          keyboardType: TextInputType.name,
          onChanged: (v) {
            controller.updateSpec(attribute.title, v);
          },
        ),
      ],
    );
  }

  Widget _buildRadioList(
    SubcategoryAttributeModel attribute,
    dynamic value,
    AddProductController controller,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(attribute.title),
        ...attribute.values.map((v) {
          return RadioListTile<String>(
            title: Text(v),
            value: v,
            groupValue: value,
            onChanged: (val) {
              controller.updateSpec(attribute.title, val);
            },
          );
        }),
      ],
    );
  }

  Widget _buildToggle(
    SubcategoryAttributeModel attribute,
    dynamic value,
    AddProductController controller,
    AddProductState state
  ) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.grayBorder),
      ),
      child: SwitchListTile(
        contentPadding: EdgeInsets.zero,
        thumbColor: WidgetStatePropertyAll(AppColors.white),
        inactiveTrackColor: AppColors.stoneGray,
        activeTrackColor: AppColors.primary,
        value: (value as bool?) ?? false,
        title: Text(attribute.title),
        subtitle: Text(attribute.dataType),
        onChanged: (v) { 
           Dev.logMap(state.specs);
           Dev.logLine(           controller.canGoNextForSpecs(state.attributes));

          controller.updateSpec(attribute.title, v);},
      ),
    );
    // SwitchListTile(
    //   title: Text(attribute.title),
    //   value: value == true,
    //   onChanged: (val) {
    //     controller.updateSpec(attribute.title, val);
    //   },
    // );
  }
}
