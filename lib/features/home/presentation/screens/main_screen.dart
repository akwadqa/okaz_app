import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'home_screen.dart';
import '../widgets/bottom_navigation_bar_view.dart';
import '../../../profile/presentation/screens/profile_screen.dart';

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
    HomeScreen(), // 0
    SizedBox(), // 1 (Add)
    SettingsScreen(), // 2
    ProfileScreen(), // 3
  ];

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(bottomNavIndexProvider);

    final localeKey = context.locale.languageCode;
    return Scaffold(
      
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        child: BottomNavigationBarView(
          key: ValueKey(localeKey),
        ),
      ),
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: _pages[selectedIndex],
      // bottomNavigationBar: BottomNavigationBarView(),
    );
  }
}
