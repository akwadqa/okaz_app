import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/home/presentation/controller/home_controller.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/shared_widgets/app_error_widget.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../domain/model/events/event_model.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _HomeScreenContent());
  }
}

class _HomeScreenContent extends ConsumerWidget {
  const _HomeScreenContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeProvider = ref.watch(homeControllerProvider);
    return homeProvider.when(
        data: (data) {
          return Scaffold(
              appBar: AppBar(
                title: Text(
                  'welcome'.tr(),
                  style: AppTextStyle.rubikSemiBold16
                      .copyWith(color: AppColors.primary),
                ),
                actions: [
                  GestureDetector(
                    onTap: () {
                      context.goNamed(AppRoutes.notificationScreen);
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      padding: EdgeInsets.all(6),
                      margin: EdgeInsetsDirectional.only(end: 20),
                      decoration: BoxDecoration(
                          color: AppColors.background,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.black.withValues(alpha: .25),
                                blurRadius: 4)
                          ]),
                      child: Assets.icons.notificationIc.svg(),
                    ),
                  )
                ],
              ),
              body:  Column(
                      spacing: 20,
                      children: [
                        // SectionTitleWidget(),
                        // Expanded(
                        //   child: ListView.separated(
                        //     // scrollDirection: Axis.horizontal,
                        //     separatorBuilder: (context, index) =>
                        //         35.verticalSpace,
                        //     itemCount: data.events.length,
                        //     itemBuilder: (context, index) {
                        //       return GestureDetector(
                        //       onTap: () => context.push(AppRoutes.eventDetails,
                        //           extra: data.events[index].occasionId),child: EventItemWidget(event: data.events[index]));
                        //       // HomeScreenAllEvents(featuredEvent: true,),
                        //     },
                        //   ),
                        // ),
                140.verticalSpace

                      ],
                    ).symmetricPadding(horizontal: 14));
        },
        error: (Object error, StackTrace stackTrace) =>
            AppErrorWidget(errorMsg: error.toString()),
        loading: () =>_buildSkelton());}
    Skeletonizer _buildSkelton() {
final defaultEvents = List.generate(
  2,
  (_) => EventModel.placeholder(),
);
    return Skeletonizer(
        enabled: true,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
                20.verticalSpace,
           
              // Expanded(
              //   child: ListView.separated(
              //     // scrollDirection: Axis.horizontal,
              //     separatorBuilder: (context, index) => 35.verticalSpace,
              //     itemCount: defaultEvents.length,
              //     itemBuilder: (context, index) {
              //       return EventItemWidget(event: defaultEvents[index])
              //           .symmetricPadding(horizontal: 12);
              //     },
              //   ),
              // ),
            ],
          ),
        ));
  }

}
