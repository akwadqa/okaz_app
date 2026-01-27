// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => _HomeModel(
  banners: (json['banners'] as List<dynamic>)
      .map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  events: (json['events'] as List<dynamic>)
      .map((e) => EventModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  featuredEvents: (json['featured_events'] as List<dynamic>)
      .map((e) => EventModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  occasionTypes: (json['occasion_types'] as List<dynamic>)
      .map((e) => OcationTypeModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$HomeModelToJson(_HomeModel instance) =>
    <String, dynamic>{
      'banners': instance.banners,
      'events': instance.events,
      'featured_events': instance.featuredEvents,
      'occasion_types': instance.occasionTypes,
    };
