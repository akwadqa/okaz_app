import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ImagesGrid extends StatelessWidget {
  const ImagesGrid({
    super.key,
    required this.images,
    required this.onAdd,
    required this.onRemove,
  });

  final List<String> images;
  final VoidCallback onAdd;
  final ValueChanged<int> onRemove;

  @override
  Widget build(BuildContext context) {
    final canAddMore = images.length < 5;

    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: [
        if (canAddMore) _AddImageTile(onTap: onAdd),
        ...List.generate(
          images.length,
          (index) => _ImageTile(
            imagePath: images[index],
            onRemove: () => onRemove(index),
          ),
        ),
      ],
    );
  }
}
class _AddImageTile extends StatelessWidget {
  const _AddImageTile({required this.onTap});

  final VoidCallback onTap;

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
     
        child: SizedBox(
          width: 96,
          height: 96,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.add, size: 28, color: Colors.orange),
              SizedBox(height: 4),
              Text(
                'إضافة',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.orange,
                ),
              ),
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
  });

  final String imagePath;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.file(
            File(imagePath),
            width: 96,
            height: 96,
            fit: BoxFit.cover,
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
                color: Colors.black54,
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
