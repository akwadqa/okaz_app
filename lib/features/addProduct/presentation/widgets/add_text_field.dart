import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class AddTextField extends StatelessWidget {
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

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: BorderSide(color: color),
      );

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: value);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Row(
            children: [
              Text(label!, style: AppTextStyle.rubikMedium16),
              if (isRequired)
                const Text(' *',
                    style: TextStyle(color: AppColors.primary)),
            ],
          ),
          const SizedBox(height: 12),
        ],

        TextFormField(
          controller: controller,
          onChanged: onChanged,
          maxLines: maxLines,
          keyboardType: keyboardType,
          cursorColor: AppColors.primary,
          style: AppTextStyle.rubikRegular16,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
            suffixText: suffixText,
            enabledBorder: _border(AppColors.grayBorder),
            focusedBorder: _border(AppColors.primary),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
