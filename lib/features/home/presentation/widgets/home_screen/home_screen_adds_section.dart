
import 'package:flutter/material.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_add_item.dart';

class HomeScreenAddsSection extends StatefulWidget {
  const HomeScreenAddsSection({super.key});

  @override
  State<HomeScreenAddsSection> createState() => _HomeScreenAddsSectionState();
}

class _HomeScreenAddsSectionState extends State<HomeScreenAddsSection> {
  late PageController controller;

  @override
  void initState() {
    controller = PageController(viewportFraction: .9);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 168,
      child: PageView.builder(
        controller: controller,
        // padding: EdgeInsets.symmetric(horizontal: 22),
        // separatorBuilder: (context, index) => 10.horizontalSpace,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => HomeScreenAddItem(),
        itemCount: 4,
      ),
    );
  }
}

