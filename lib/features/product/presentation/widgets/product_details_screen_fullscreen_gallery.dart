// New file: product_details_screen_fullscreen_gallery.dart
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../src/infrastructure/api/endpoint/services_urls.dart';
import '../../domain/model/product_details_model/product_details_model.dart';

class ProductDetailsFullscreenGallery extends StatefulWidget {
  const ProductDetailsFullscreenGallery({
    super.key,
    required this.images,
    required this.initialIndex,
  });

  final List<PostImage> images;
  final int initialIndex;

  @override
  State<ProductDetailsFullscreenGallery> createState() =>
      _ProductDetailsFullscreenGalleryState();
}

class _ProductDetailsFullscreenGalleryState
    extends State<ProductDetailsFullscreenGallery> {
  late final PageController _pageController;
  final ScrollController _thumbController = ScrollController();
  late int _currentIndex;

  static const double _thumbSize = 70;
  static const double _thumbSpacing = 10;
  static const double _thumbBarHeight = 110;

  bool get _hasMany => widget.images.length > 1;
  bool get _canGoPrev => _currentIndex > 0;
  bool get _canGoNext => _currentIndex < widget.images.length - 1;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: widget.initialIndex);

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollThumbsTo(_currentIndex, jump: true);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _thumbController.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  void _scrollThumbsTo(int index, {bool jump = false}) {
    if (!_thumbController.hasClients) return;

    final screenW = MediaQuery.of(context).size.width;
    final itemW = _thumbSize + _thumbSpacing;
    final target = (index * itemW) - (screenW - _thumbSize) / 2;

    final max = _thumbController.position.maxScrollExtent;
    final clamped = target.clamp(0.0, max);

    if (jump) {
      _thumbController.jumpTo(clamped);
    } else {
      _thumbController.animateTo(
        clamped,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
      );
    }
  }

  Future<void> _goTo(int index) async {
    await _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
    );
  }

  Future<void> _prev() async {
    if (!_canGoPrev) return;
    await _pageController.previousPage(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
    );
  }

  Future<void> _next() async {
    if (!_canGoNext) return;
    await _pageController.nextPage(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
    );
  }

  Widget _circleIcon({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.35),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(icon, color: Colors.white),
      ),
    );
  }

  Widget _arrow({
    required IconData icon,
    required VoidCallback onTap,
    required bool enabled,
  }) {
    return IgnorePointer(
      ignoring: !enabled,
      child: AnimatedOpacity(
        opacity: enabled ? 1 : 0.25,
        duration: const Duration(milliseconds: 150),
        child: Container(
          width: 46,
          height: 46,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.28),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: onTap,
            icon: Icon(icon, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // BLUR + SEMI BLACK OVERLAY
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: Container(
                color: Colors.black.withOpacity(0.8), // semi black
              ),
            ),
          ),

          // CONTENT: image + thumbnails
          SafeArea(
            child: Column(
              children: [
                // IMAGE AREA
                Expanded(
                  child: Stack(
                    children: [
                    PageView.builder(
                  controller: _pageController,
                  itemCount: widget.images.length,
                  onPageChanged: (i) => setState(() => _currentIndex = i),
                  itemBuilder: (context, index) {
                    final imageUrl = ServicesUrls.imageUrl +
                        (widget.images[index].image ?? '');

                    return InteractiveViewer(
                      minScale: 1.0,
                      maxScale: 4.0,
                      child: SizedBox.expand(
                        child: CachedNetworkImage(
                          imageUrl: imageUrl,
                          // choose one:
                          fit: BoxFit.contain, // shows full image (recommended)
                          // fit: BoxFit.cover, // fills screen (may crop)
                          placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(color: Colors.white),
                          ),
                          errorWidget: (context, url, error) => const Center(
                            child: Icon(Icons.broken_image,
                                color: Colors.white, size: 64),
                          ),
                        ),
                      ),
                    );
                  },
                ),

                      // LEFT / RIGHT ARROWS
                      if (_hasMany) ...[
                        PositionedDirectional(
                          start: 12,
                          top: 50,
                          bottom: _thumbBarHeight, // keep above thumbnails
                          child: Center(
                            child: _arrow(
                              icon: Icons.chevron_left_rounded,
                              onTap: _prev,
                              enabled: _canGoPrev,
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          end: 12,
                          top: 50,
                          bottom: _thumbBarHeight,
                          child: Center(
                            child: _arrow(
                              icon: Icons.chevron_right_rounded,
                              onTap: _next,
                              enabled: _canGoNext,
                            ),
                          ),
                        ),
                      ],

                      // TOP: counter + close
                      PositionedDirectional(
                        top: 10,
                        start: 12,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.35),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            '${_currentIndex + 1}/${widget.images.length}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        top: 6,
                        end: 12,
                        child: _circleIcon(
                          icon: Icons.close,
                          onTap: () => Navigator.of(context).pop(),
                        ),
                      ),
                    ],
                  ),
                ),

                // THUMBNAILS BAR (like screenshot)
                if (_hasMany)
                  Container(
                    height: _thumbBarHeight,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: ListView.builder(
                      controller: _thumbController,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      itemCount: widget.images.length,
                      itemBuilder: (context, i) {
                        final isSelected = i == _currentIndex;
                        final thumbUrl = ServicesUrls.imageUrl +
                            (widget.images[i].image ?? '');

                        return Padding(
                          padding: const EdgeInsets.only(right: _thumbSpacing),
                          child: GestureDetector(
                            onTap: () => _goTo(i),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 180),
                              width: _thumbSize,
                              height: _thumbSize,
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.25),
                                  width: isSelected ? 2.2 : 1,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: CachedNetworkImage(
                                  imageUrl: thumbUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// ─── Indicator Widget ────────────────────────────────────────────────────────

class _FullscreenCarouselIndicator extends StatelessWidget {
  final int count;
  final int currentIndex;

  const _FullscreenCarouselIndicator({
    required this.count,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(count, (index) {
        final bool isActive = index == currentIndex;
        return Padding(
          padding: EdgeInsets.only(right: index == count - 1 ? 0 : 6),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: isActive ? 28 : 8,
            height: 5,
            decoration: BoxDecoration(
              color: isActive ? Colors.white : Colors.white38,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        );
      }),
    );
  }
}