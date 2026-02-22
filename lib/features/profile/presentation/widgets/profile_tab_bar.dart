// widgets/profile_tab_bar.dart
import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';
import '../controller/profile_state.dart';
class ProfileTabBar extends StatelessWidget {
  final ProfileTab selectedTab;
  final ValueChanged<ProfileTab> onTabChanged;

  const ProfileTabBar({
    super.key,
    required this.selectedTab,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: ProfileTab.values.length,
      initialIndex: selectedTab.index,
      child: Builder(
        builder: (context) {
          final controller = DefaultTabController.of(context);

          controller.addListener(() {
            if (!controller.indexIsChanging) {
              onTabChanged(ProfileTab.values[controller.index]);
            }
          });

          return Container(
            height: 50,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(24),
            ),
            child: TabBar(
              indicator: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(24),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              
              dividerColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
              overlayColor:
                  WidgetStateProperty.all(Colors.transparent),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey.shade700,
              tabs: const [
                Tab(text: 'إعلاناتي'),
                Tab(text: 'المفضلة'),
              ],
            ),
          );
        },
      ),
    );
  }
}
