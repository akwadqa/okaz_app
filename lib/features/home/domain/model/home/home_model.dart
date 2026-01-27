import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:okaz/features/home/domain/model/banners/banner_model.dart';
import 'package:okaz/features/home/domain/model/events/event_model.dart';
import 'package:okaz/features/home/domain/model/events/featured_event_model.dart';

import '../ocation type/ocation_type_model.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
abstract class HomeModel with _$HomeModel {
  factory HomeModel({
    required List<BannerModel> banners,
    required List<EventModel> events,
    @JsonKey(name: 'featured_events')
    required List<EventModel> featuredEvents,
    @JsonKey(name: 'occasion_types') required List<OcationTypeModel> occasionTypes,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}
