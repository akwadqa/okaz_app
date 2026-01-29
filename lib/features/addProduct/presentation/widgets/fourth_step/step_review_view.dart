import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/addProduct/presentation/controller/add_product_controller.dart';

import '../../../../../src/resourses/color_manager/app_colors.dart';
import '../add_text_field.dart';
import 'image_grid.dart';



class StepReviewView extends ConsumerWidget {
  const StepReviewView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addProductControllerProvider).value!;
    final controller =
        ref.read(addProductControllerProvider.notifier);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        /// -----------------------------
        /// Product Images
        /// -----------------------------
        const _SectionTitle(
          title: 'صور المنتج',
          subtitle: 'حد أقصى 5 صور',
          required: true,
        ),
        const SizedBox(height: 12),

       ImagesGrid(
  images: state.images,
  onAdd: controller.pickImage,
  onRemove: controller.removeImage,
),


        const SizedBox(height: 24),

        /// -----------------------------
        /// Arabic Details
        /// -----------------------------
        const _SectionTitle(
          title: 'التفاصيل بالعربية',
          required: true,
        ),
        const SizedBox(height: 12),

        AddTextField(
          hint: 'الاسم',
          value: state.titleAr,
          onChanged: controller.setTitleAr,
        ),
        const SizedBox(height: 12),

        AddTextField(
          hint: 'الوصف',
          maxLines: 4,
          value: state.descAr,
          onChanged: controller.setDescAr,
        ),

        const SizedBox(height: 24),

        /// -----------------------------
        /// English Details
        /// -----------------------------
        const _SectionTitle(
          title: 'التفاصيل بالإنجليزية',
          required: true,
        ),
        const SizedBox(height: 12),

        AddTextField(
          hint: 'Name',
          value: state.titleEn,
          onChanged: controller.setTitleEn,
        ),
        const SizedBox(height: 12),

        AddTextField(
          hint: 'Description',
          maxLines: 4,
          value: state.descEn,
          onChanged: controller.setDescEn,
        ),

        const SizedBox(height: 24),

        /// -----------------------------
        /// Price
        /// -----------------------------
        const _SectionTitle(
          title: 'السعر',
          required: true,
        ),
        const SizedBox(height: 12),

        AddTextField(
          hint: 'ادخل السعر',
          keyboardType: TextInputType.number,
          suffixText: 'ر.ق',
          value: state.price?.toString(),
          onChanged: (v) =>
              controller.setPrice(double.tryParse(v)),
        ),

        const SizedBox(height: 24),

        /// -----------------------------
        /// Featured Ad
        /// -----------------------------
  
        Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: AppColors.grayBorder),
              ),
              child: SwitchListTile(
                contentPadding: EdgeInsets.zero,

                thumbColor: WidgetStatePropertyAll(AppColors.white),

                inactiveTrackColor: AppColors.stoneGray,
                activeTrackColor: AppColors.primary,

                value: state.isFeatured,
          title: const Text('الإعلان مميز'),
          subtitle: const Text('اعرض إعلانك في أعلى الصفحة'),

          onChanged: controller.setFeatured,
              ),
            )
      ],
    );
  }
}
class _SectionTitle extends StatelessWidget {
  const _SectionTitle({
    required this.title,
    this.subtitle,
    this.required = false,
  });

  final String title;
  final String? subtitle;
  final bool required;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(title,
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w600)),
            if (required)
              const Text(' *',
                  style: TextStyle(color: Colors.red)),
          ],
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 4),
          Text(subtitle!,
              style: const TextStyle(
                  fontSize: 12, color: Colors.grey)),
        ]
      ],
    );
  }
}
class _ImagesGrid extends StatelessWidget {
  const _ImagesGrid({
    required this.images,
    required this.onAdd,
    required this.onRemove,
  });

  final List<String> images;
  final VoidCallback onAdd;
  final ValueChanged<int> onRemove;

  @override
  Widget build(BuildContext context) {
    final items = [...images];
    if (items.length < 5) items.add('add');

    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: List.generate(items.length, (index) {
        final item = items[index];

        if (item == 'add') {
          return _AddImageTile(onTap: onAdd);
        }

        return _ImageTile(
          image: item,
          onRemove: () => onRemove(index),
        );
      }),
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
      child: Container(
        width: 96,
        height: 96,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.orange),
        ),
        child: const Center(child: Icon(Icons.add)),
      ),
    );
  }
}

class _ImageTile extends StatelessWidget {
  const _ImageTile({
    required this.image,
    required this.onRemove,
  });

  final String image;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            image,
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
            child: const CircleAvatar(
              radius: 10,
              backgroundColor: Colors.black54,
              child: Icon(Icons.close,
                  size: 14, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
