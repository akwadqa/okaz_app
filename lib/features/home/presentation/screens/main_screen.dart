
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/home/presentation/screens/home_screen.dart';
import 'package:okaz/features/home/presentation/widgets/bottom_navigation_bar_view.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';

import '../controller/home_controller.dart';

//
class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  // int _selectedIndex = 0;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
  static final List<Widget> _pages = [
    HomeScreen(),
    // ScanPage(),
    // NotificationsScreen(),
    // MessagesScreen(),
    // SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(bottomNavIndexProvider);

    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          // context.pushNamed(AppRoutes.createEventScreen);
          context.push(AppRoutes.invitationsSecreen, extra: true);
        },
        child: SizedBox(
          width: 70,
          height: 70,
          child: Center(child: Assets.icons.addEventIc.svg()),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: _pages[selectedIndex],
      // bottomNavigationBar: BottomNavigationBarView(),
    );
  }
}
