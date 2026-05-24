import 'package:flutter/material.dart';
import '../../../../src/core/utils/extenssions/int_extenssion.dart';
import '../../../../src/core/utils/extenssions/widget_extensions.dart';
import '../../../../src/resourses/color_manager/app_colors.dart';

class SettingsProfileHeader extends StatelessWidget {
  final String name;

  const SettingsProfileHeader({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: AppColors.grayBorder,
            child: Icon(
              Icons.person,
              size: 40,
            ).bottomCenter(),
          ),
          16.horizontalSpace,
          Text(
            name,
            style: textTheme.headlineMedium!.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w800,
                fontSize: 20),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_rounded),
        ],
      ),
    );
  }
}
