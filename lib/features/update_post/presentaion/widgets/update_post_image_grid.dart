import 'dart:developer';
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/src/core/shared_widgets/custom_button_widget.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class UpdatePostImageGrid extends StatelessWidget {
  const UpdatePostImageGrid({
    super.key,
    required this.images,
    required this.onAdd,
    required this.onRemove,
  });

  final List<PostImage> images;
  final VoidCallback onAdd;
  final ValueChanged<int> onRemove;

  @override
  Widget build(BuildContext context) {
    final canAddMore = images.length < 5;
    final noImagesYet = images.isEmpty;

    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: [
        if (canAddMore) _AddImageTile(onTap: onAdd, noImagesYet: noImagesYet),
        ...List.generate(
          images.length,
          (index) => _ImageTile(
            isNetrowk: !(images[index].isFromDevice ?? true),
            imagePath: images[index].image ?? '',
            onRemove: () => onRemove(index),
          ),
        ),
      ],
    );
  }
}

class _AddImageTile extends StatelessWidget {
  const _AddImageTile({required this.onTap, required this.noImagesYet});

  final VoidCallback onTap;
  final bool noImagesYet;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: DottedBorder(
        options: RectDottedBorderOptions(
          dashPattern: const [6, 4],
          color: Colors.orange,
          strokeWidth: 1.5,

          // borderType: BorderType.RRect,
          // radius: const Radius.circular(12),
        ),
        child: Container(
          width: noImagesYet ? double.infinity : 100,
          height: noImagesYet ? 160 : 100,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.primaryOpacity,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Icon(noImagesYet ? Icons.camera_alt : Icons.add,
                    size: 20, color: AppColors.primary),
              ),
              if (noImagesYet) ...[
                Text('add_images_for_bide'.tr(),
                        style: AppTextStyle.cairoBold12)
                    .symmetricPadding(vertical: 16),
                CustomButtonWidget(
                  text: "select_image",
                  onTap: onTap,
                  isFiled: true,
                  height: 45,
                  width: 150,
                  backgroundColor: AppColors.primary,
                )
              ]
            ],
          ),
        ),
      ),
    );
  }
}

class _ImageTile extends StatelessWidget {
  const _ImageTile({
    required this.imagePath,
    required this.onRemove,
    required this.isNetrowk,
  });

  final String imagePath;
  final VoidCallback onRemove;
  final bool isNetrowk;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: DottedBorder(
            options: RectDottedBorderOptions(
              dashPattern: const [6, 4],
              color: Colors.orange,
              strokeWidth: 1.5,

              // borderType: BorderType.RRect,
              // radius: const Radius.circular(12),
            ),
            child: isNetrowk
                ? CachedNetworkImage(
                    imageUrl: ServicesUrls.imageUrl + imagePath,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  )
                : Image.file(
                    File(imagePath),
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
          ),
        ),
        Positioned(
          top: 4,
          right: 4,
          child: InkWell(
            onTap: onRemove,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.close,
                size: 14,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
