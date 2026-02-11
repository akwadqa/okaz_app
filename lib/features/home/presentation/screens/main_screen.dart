import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/home/presentation/screens/home_screen.dart';
import 'package:okaz/features/home/presentation/widgets/bottom_navigation_bar_view.dart';
import 'package:okaz/features/profile/presentation/screens/profile_screen.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:okaz/src/application/router/app_routes.dart';

import '../../../settings/presentation/screens/settings_screen.dart';
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
    HomeScreen(),      // 0
  SizedBox(),        // 1 (Add)
  SettingsScreen(),  // 2
  ProfileScreen(),   // 3
  ];

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(bottomNavIndexProvider);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBarView(),
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: _pages[selectedIndex],
      // bottomNavigationBar: BottomNavigationBarView(),
    );
  }
}
