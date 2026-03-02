// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:okaz/features/home/domain/model/home_model/home_model.dart';

class HomeState {
  final AsyncValue<HomeModel> homeModel;

  HomeState({required this.homeModel});

  factory HomeState.init() => HomeState(homeModel: AsyncLoading());

  HomeState copyWith({AsyncValue<HomeModel>? homeModel}) {
    return HomeState(homeModel: homeModel ?? this.homeModel);
  }
}
