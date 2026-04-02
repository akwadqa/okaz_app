// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:okaz/features/home/domain/model/home_model/home_model.dart';

class HomeState {
  final AsyncValue<HomeModel> homeModel;
  final List<CategoryModel> filterdCategories;

  HomeState({required this.homeModel, required this.filterdCategories});

  factory HomeState.init() => HomeState(homeModel: AsyncLoading() , filterdCategories: []);

  HomeState copyWith({
    AsyncValue<HomeModel>? homeModel,
    List<CategoryModel>? filterdCategories,
  }) {
    return HomeState(
      homeModel: homeModel ?? this.homeModel,
      filterdCategories: filterdCategories ?? this.filterdCategories,
    );
  }
}
