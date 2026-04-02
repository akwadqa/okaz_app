import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class AddTextField extends StatefulWidget {
  const AddTextField({
    super.key,
    required this.hint,
    this.label,
    this.value,
    this.onChanged,
    this.maxLines = 1,
    this.keyboardType,
    this.isRequired = false,
    this.suffixText,
  });

  final String hint;
  final String? label;
  final String? value;
  final ValueChanged<String>? onChanged;
  final int maxLines;
  final TextInputType? keyboardType;
  final bool isRequired;
  final String? suffixText;

  @override
  State<AddTextField> createState() => _AddTextFieldState();
}

class _AddTextFieldState extends State<AddTextField> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.value);
  }

  @override
  void didUpdateWidget(covariant AddTextField oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.value != widget.value) {
      controller.text = widget.value ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: widget.value);

    return Column(
      children: [
        if (widget.label != null) ...[
          Row(
            children: [
              Text(widget.label!, style: AppTextStyle.rubikMedium16),
              if (widget.isRequired)
                const Text(' *', style: TextStyle(color: AppColors.primary)),
            ],
          ),
          const SizedBox(height: 12),
        ],
        TextFormField(
          controller: controller,
          onChanged: widget.onChanged,
          maxLines: widget.maxLines,
          keyboardType: widget.keyboardType,
          cursorColor: AppColors.primary,
          style: AppTextStyle.rubikRegular16,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: widget.hint.tr(),
            hintStyle: AppTextStyle.cairoRegular12,
            suffixText: widget.suffixText,
            enabledBorder: _border(AppColors.grayBorder),
            focusedBorder: _border(AppColors.primary),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: BorderSide(color: color),
      );
}