// widgets/profile_item_card.dart
import 'package:flutter/material.dart';
import '../../domain/profile_item.dart';

class ProfileItemCard extends StatelessWidget {
  final ProfileItem item;

  const ProfileItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.network(
              item.image,
              height: 140,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(item.condition,
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey.shade600)),
                const SizedBox(height: 6),
                Text('${item.price} ر.ق',
                    style: const TextStyle(
                        color: Colors.brown, fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(Icons.thumb_up, size: 14),
                    const SizedBox(width: 4),
                    Text('${item.likes}'),
                    const SizedBox(width: 12),
                    const Icon(Icons.comment, size: 14),
                    const SizedBox(width: 4),
                    Text('${item.comments}'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
