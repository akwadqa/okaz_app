import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/extenssions/int_extenssion.dart';
import '../../resourses/font_manager/app_text_style.dart';

import '../../../gen/assets.gen.dart';

class AppEmptyDataWidget extends StatelessWidget {
  final String text;
  final double? height;
  final Widget? image;
  const AppEmptyDataWidget({super.key, required this.text, this.height, this.image});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        image?? SvgPicture.asset(Assets.images.emptyData.keyName,fit: BoxFit.cover,height:height ,),
          20.verticalSpace,
          Text(
            context.tr(text),
            style: AppTextStyle.rubikMedium20,
          ),
        ],
      ),
    );
  }
}
