import 'dart:async';

import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_controller.g.dart';
@riverpod
class FilterController extends _$FilterController {
  @override
  FutureOr<void> build() {
    
  }
}

final searchTypeProvider = StateProvider<int>((ref) {
  return 0;
});