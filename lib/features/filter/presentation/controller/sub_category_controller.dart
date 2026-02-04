import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final subCategoriesProvider = Provider<List<String>>((ref) {
  return const [
    'ايفون',
    'سامسونج',
    'شاومي',
    'هواوي',
    'اوبو',
    'فيفو',
    'ريلمي',
  ];
});

final selectedSubCategoryProvider = StateProvider<String>((ref) {
  final items = ref.read(subCategoriesProvider);
  return items.isNotEmpty ? items.first : '';
});
