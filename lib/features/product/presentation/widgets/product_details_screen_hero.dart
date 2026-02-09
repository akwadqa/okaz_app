import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

import '../../../../gen/assets.gen.dart';

class ProductDetailsScreenHero extends StatefulWidget {
  const ProductDetailsScreenHero({super.key});

  @override
  State<ProductDetailsScreenHero> createState() =>
      _ProductDetailsScreenHeroState();
}

class _ProductDetailsScreenHeroState extends State<ProductDetailsScreenHero> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final _images = [
    Assets.images.iponeImage,
    Assets.images.iponeImage,
    Assets.images.iponeImage,
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 351,
      // width: 200,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: PageView.builder(
              controller: _pageController,
              itemCount: _images.length,
              onPageChanged: (index) => setState(() => _currentIndex = index),
              itemBuilder: (context, index) =>
                  _images[index].image(fit: BoxFit.cover),
            ),
          ),

          Positioned.directional(
            textDirection: TextDirection.ltr,
            start: 16,
            top: 28,
            child: ProductDetailsScreenIconCircleButton(
              icon: Assets.icons.starIc,
            ),
          ),
          Positioned.directional(
            textDirection: TextDirection.ltr,
            end: 16,
            top: 28,
            child: IconButton(
              onPressed: () => context.pop(),
              icon: Icon(Icons.arrow_back_ios_rounded, color: AppColors.white),
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 18,
            child: Center(
              child: ProductDetailsScreenCarouselIndicator(
                count: _images.length,
                currentIndex: _currentIndex,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductDetailsScreenIconCircleButton extends StatelessWidget {
  final SvgGenImage icon;
  final VoidCallback? onTap;
  final bool toProduct;

  const ProductDetailsScreenIconCircleButton({
    super.key,
    required this.icon,
    this.onTap,
    this.toProduct = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      shape: const StadiumBorder(),
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(toProduct ? 4 : 6),
        child: InkWell(
          onTap: onTap,
          customBorder: const StadiumBorder(),
          child: SizedBox(width: 26, height: 26, child: icon.svg()),
        ),
      ),
    );
  }
}

class ProductDetailsScreenCarouselIndicator extends StatelessWidget {
  final int count;
  final int currentIndex;

  const ProductDetailsScreenCarouselIndicator({
    super.key,
    required this.count,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 5,
      children: List.generate(count, (index) {
        final bool isActive = index == currentIndex;
        return Padding(
          padding: EdgeInsets.only(right: index == count - 1 ? 0 : 5),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: isActive ? 30 : 8,
            height: 5,
            decoration: BoxDecoration(
              color: isActive ? AppColors.white : AppColors.grey97,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        );
      }),
    );
  }
}
