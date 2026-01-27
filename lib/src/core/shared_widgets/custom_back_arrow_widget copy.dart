import 'package:flutter/material.dart';
import 'package:okaz/src/core/utils/functions/helper_methods.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

class CustomBackArrowWidget extends StatelessWidget {
  final VoidCallback? onTap;
  const CustomBackArrowWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        Navigator.of(context).pop();
        // await safelyPop(context);
      if(onTap != null)  onTap?.call();
      },
      child: Container(
          margin: EdgeInsetsDirectional.all(10),
          padding: EdgeInsetsDirectional.all( 4),
          decoration: ShapeDecoration(
            color: AppColors.cardWhite,
            shape: CircleBorder(),
            // borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Icon(
            Icons.arrow_back,
            color: AppColors.primary,
            // size: 18,
          )),
    );
  }
}
