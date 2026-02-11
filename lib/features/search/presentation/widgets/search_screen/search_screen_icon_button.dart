import 'package:flutter/material.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

class SearchScreenIconButton extends StatelessWidget {
  final SvgGenImage icon;
  final VoidCallback? onTap;

  const SearchScreenIconButton({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 42,
        padding: EdgeInsets.all(9),
        height: 42,
        decoration: BoxDecoration(
          color: AppColors.secondPrimary,
          borderRadius: BorderRadius.circular(22),
        ),
        child: icon.svg(),
      ),
    );
  }
}
