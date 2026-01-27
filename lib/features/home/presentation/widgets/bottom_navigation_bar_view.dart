// import 'dart:ui' as ui;

// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:go_router/go_router.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:okaz/gen/assets.gen.dart';
// import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
// import 'package:okaz/src/resourses/color_manager/app_colors.dart';

// import '../controller/home_controller.dart';

// class BottomNavigationBarView extends ConsumerWidget {

//   const BottomNavigationBarView({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final selectedIndex = ref.watch(bottomNavIndexProvider);

//     final iconList = [
//       Assets.icons.homeIc.svg(),
//       Assets.icons.scanIc.svg(),
//       Assets.icons.messagesIc.svg(),
//       Assets.icons.settingsIc.svg(),
//     ];

//     final labelList = [
//       context.tr('home'),
//       context.tr('scan'),
//       context.tr('notifications'),
//       context.tr('settings'),
//     ];

//     return SizedBox(
//       height: 107,
//       child: AnimatedBottomNavigationBar.builder(
//         itemCount: iconList.length,
//         tabBuilder: (int i, bool isActive) {
//           final color = isActive ? AppColors.primary : AppColors.black;
    
//           return Column(
//             // mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(height: 10),
//               AnimatedContainer(
//                 padding: EdgeInsets.zero,
//                 margin: EdgeInsets.zero,
//                 duration: Duration(milliseconds: 300),
//                 // width: double.infinity,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: selectedIndex == i ? AppColors.primary : Colors.transparent,
//                 ),
//                 width: 27,
//                 height: 4,
//               ),
//               12.verticalSpace,
//               ColorFiltered(
//                 colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
//                 child: iconList[i],
//               ),
//               // SizedBox(height: 4),
//               Spacer(),
//               Text(
//                 labelList[i],
//                 style: TextStyle(fontSize: 12, color: color),
//               ),
//               // 10.verticalSpace,
//             ],
//           );
//         },
//         gapLocation: GapLocation.center,
//         splashSpeedInMilliseconds: 1,
//         notchSmoothness: NotchSmoothness.smoothEdge,
//         activeIndex: selectedIndex,
//             onTap: (i) =>
//             ref.read(bottomNavIndexProvider.notifier).state = i,
//         backgroundColor: Colors.white,
//         shadow: Shadow(
//           blurRadius: 24,
//           offset: Offset(0, -5),
//           color: Colors.black.withOpacity(.12),
//         ),
//       ),
//     );
//   }
// }
