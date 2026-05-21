import 'package:flutter_riverpod/legacy.dart';
import '../../../home/domain/model/home_model/home_model.dart';

final selectedSubCategoryProvider = StateProvider<String>((ref) {
  // final items = ref.watch(mainSubcategory).mainAttributes?.first.values ?? [];
  // return items.isNotEmpty ? items.first.title : '';
  // if (items.isNotEmpty) {
  //   return items.first.title ?? '';
  // }
  return '';
});

final mainSubcategory = StateProvider<SubCategoryModel>((ref) {
  return SubCategoryModel();
});
