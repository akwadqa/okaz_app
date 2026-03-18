import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/features/product/presentation/controller/favorite_product_contrller.dart';
import 'package:okaz/features/product/presentation/controller/product_controller.dart';
import 'package:okaz/src/core/shared_widgets/app_dialogs.dart';
import 'package:okaz/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

import '../../../../gen/assets.gen.dart';

class ProductDetailsScreenHero extends StatefulWidget {
  const ProductDetailsScreenHero({
    super.key,
    required this.productDetailsModel,
  });
  final ProductDetailsModel productDetailsModel;

  @override
  State<ProductDetailsScreenHero> createState() =>
      _ProductDetailsScreenHeroState();
}

class _ProductDetailsScreenHeroState extends State<ProductDetailsScreenHero> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

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
              itemCount: widget.productDetailsModel.images?.length,
              onPageChanged: (index) => setState(() => _currentIndex = index),
              itemBuilder: (context, index) => CachedNetworkImage(
                imageUrl: ServicesUrls.imageUrl +
                    (widget.productDetailsModel.images?[index].image ?? ''),
                fit: BoxFit.cover,
              ),
              // widget.productDetailsModel.images[index].(fit: BoxFit.cover),
            ),
          ),
          PositionedDirectional(
            end: 16,
            top: 28,
            child: ProductDetailsScreenIconCircleButton(
              icon: Assets.icons.starIc,
              productDetailsModel: widget.productDetailsModel,
            ),
          ),
          PositionedDirectional(
            start: 16,
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
                count: widget.productDetailsModel.images?.length ?? 0,
                currentIndex: _currentIndex,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductDetailsScreenIconCircleButton extends ConsumerStatefulWidget {
  final SvgGenImage icon;
  final VoidCallback? onTap;
  final ProductDetailsModel productDetailsModel;
  final bool toProduct;

  const ProductDetailsScreenIconCircleButton({
    super.key,
    required this.icon,
    required this.productDetailsModel,
    this.onTap,
    this.toProduct = false,
  });

  @override
  ConsumerState<ProductDetailsScreenIconCircleButton> createState() =>
      _ProductDetailsScreenIconCircleButtonState();
}

class _ProductDetailsScreenIconCircleButtonState
    extends ConsumerState<ProductDetailsScreenIconCircleButton>
    with SingleTickerProviderStateMixin {
  // bool isSelected = false;
  double _scale = 1.0;

  void _handleTap() {
    _scale = 1.0;
    ref
        .read(favoriteProductContrllerProvider(
                widget.productDetailsModel.name.toString(),
                widget.productDetailsModel?.isFavorited ?? false)
            .notifier)
        .addPostToFavorite(widget.productDetailsModel.name ?? 'id');
    setState(() {
      _scale = 1.3;
    });

    if (widget.onTap != null) widget.onTap!();

    Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) {
        setState(() => _scale = 1.0);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final favoriteAsync = ref.watch(favoriteProductContrllerProvider(
        widget.productDetailsModel.name.toString(),
        widget.productDetailsModel.isFavorited ?? false));

 
    final isSelected = favoriteAsync.value ??
        (widget.productDetailsModel.isFavorited ?? false);

    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 12,
      child: GestureDetector(
        onTap: _handleTap,
        child: AnimatedScale(
          scale: _scale,
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeInOut,
          child: Padding(
            padding: EdgeInsets.all(widget.toProduct ? 4 : 6),
            child: SizedBox(
              width: 20,
              height: 20,
              child: isSelected
                  ? Assets.icons.yellowStarIc.svg()
                  : widget.icon.svg(
                      colorFilter: isSelected
                          ? const ColorFilter.mode(
                              Colors.yellow,
                              BlendMode.dst,
                            )
                          : null,
                    ),
            ),
          ),
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
