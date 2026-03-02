import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:okaz/features/home/domain/model/home_model/home_model.dart';
import 'package:okaz/features/home/presentation/widgets/home_screen/home_screen_add_item.dart';

class HomeScreenAddsSection extends StatefulWidget {
  const HomeScreenAddsSection({super.key, required this.homeModel});
  final HomeModel homeModel;

  @override
  State<HomeScreenAddsSection> createState() => _HomeScreenAddsSectionState();
}

class _HomeScreenAddsSectionState extends State<HomeScreenAddsSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 168,
      child: CarouselSlider.builder(
        itemCount: widget.homeModel.banners?.length,
        itemBuilder: (context, index, realIndex) =>
            HomeScreenAddItem(bannerModel: widget.homeModel.banners![index]!),
        options: CarouselOptions(
          height: 168,
          viewportFraction: .8,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          scrollDirection: Axis.horizontal,
          
        ),
      ),
    );
  }
}
