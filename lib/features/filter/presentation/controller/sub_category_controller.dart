import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:okaz/features/home/domain/model/home_model/home_model.dart';



final selectedSubCategoryProvider = StateProvider<String>((ref) {
  final items = ref.watch(mainSubcategory).mainAttributes?.first.values?.split(',') ?? [];
  return items.isNotEmpty ? items.first : '';
});

final mainSubcategory = StateProvider<SubCategoryModel>((ref) {
  return SubCategoryModel();
});
