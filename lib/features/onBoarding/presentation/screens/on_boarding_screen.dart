import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/auth/widgets/auth_build_content.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/shared_widgets/custom_button_widget.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/infrastructure/storage/local_storage_service.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';


class OnBoardingScreen extends ConsumerStatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  ConsumerState<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends ConsumerState<OnBoardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: AuthScreen(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: PageView.builder(
              
                controller: _controller,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: onBoardingItems(context,ref).length,
        
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      onBoardingItems(context, ref)[index],
                        if(index!=2)
   PositionedDirectional(
    end: 20,
    child: InkWell(
      onTap: () {
          ref.read(localStorageServiceProvider).markAppOpened();
        context.push(AppRoutes.signInScreen);
      },
      child: Text("skip".tr(),style: AppTextStyle.rubikSemiBold16.copyWith(color: AppColors.primary),)))
                    ],
                  );
                },
              ),
            ),
            _buildNextButton(context),
            _buildDotsIndicator()
        
          ],
        ),
      ),
    );
    
  }
Widget _buildDotsIndicator() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(
      onBoardingItems(context,ref).length,
      (index) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        width: currentIndex == index ? 35 : 8,
        height: 8,
        decoration: BoxDecoration(
          color: currentIndex == index
              ? AppColors.primary
              : AppColors.gray,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  ).symmetricPadding(vertical: 40);
}

  Widget _buildNextButton(BuildContext context) {
    return CustomButtonWidget(
      text: currentIndex == onBoardingItems(context,ref).length - 1
          ? context.tr("start_now")
          : context.tr("next"),
      onTap: () async {
        if (currentIndex == onBoardingItems(context,ref).length - 1) {
          context.push(AppRoutes.signInScreen);
        await  ref.read(localStorageServiceProvider).markAppOpened();
        } else {
          _controller.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }
      },
      backgroundColor: AppColors.primary,
      isFiled: true,
      height: 60,
      radius: 24,
      width: MediaQuery.sizeOf(context).width,
    ).onlyPadding(bottom: 10).symmetricPadding(horizontal: 15);
  }
}

List<Widget> onBoardingItems(BuildContext context, WidgetRef ref) => [
  _buildOnboardingPage(
    context,
    ref: ref,
    image: Assets.images.onBoardingIm1.image(
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    ),
    title: context.tr("on_boarding_title1"),
    description: context.tr("on_boarding_dsc1"),
  ),
  _buildOnboardingPage(
    context,
    ref: ref,
    image: Assets.images.onBoardingIm2.image(
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    ),
    title: context.tr("on_boarding_title2"),
    description: context.tr("on_boarding_dsc2"),
  ),
  _buildOnboardingPage(
    context,
    ref: ref,
    image: Assets.images.onBoardingIm3.image(
      width: double.infinity,
      fit: BoxFit.contain,
    ),
    title: context.tr("on_boarding_title3"),
    description: context.tr("on_boarding_dsc3"),
  ),
];

Widget _buildOnboardingPage(
  BuildContext context, {
  required Widget image,
  required String title,
  required String description,
  required WidgetRef ref,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    // mainAxisSize: MainAxisSize.max,
    children: [
      image.symmetricPadding(horizontal: 40, vertical: 40),
      25.verticalSpace,
      Text(
        title,
        style: AppTextStyle.rubikSemiBold20.copyWith(fontSize: 26, color: AppColors.primary),
      ),
      12.verticalSpace,
      Text(
        description,
        textAlign: TextAlign.center,
        style: AppTextStyle.bodysmallSemibold.copyWith(fontSize: 14, color: AppColors.black),
      ).symmetricPadding(horizontal: 15),
      // 15.verticalSpace,
    ],
  );
}
