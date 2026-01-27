// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeaturedEventModel _$FeaturedEventModelFromJson(Map<String, dynamic> json) =>
    _FeaturedEventModel(
      occasionId: json['occasion_id'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      mapLink: json['map_link'] as String,
      imageUrl: json['image_url'] as String,
      inviteTemplate: json['invite_template'] as String?,
      confirmedTemplate: json['confirmed_template'] as String?,
      declinedTemplate: json['declined_template'] as String?,
      workflowState: json['workflow_state'] as String,
      isFeatured: (json['is_featured'] as num).toInt(),
      status: json['status'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$FeaturedEventModelToJson(_FeaturedEventModel instance) =>
    <String, dynamic>{
      'occasion_id': instance.occasionId,
      'title': instance.title,
      'type': instance.type,
      'date': instance.date,
      'time': instance.time,
      'map_link': instance.mapLink,
      'image_url': instance.imageUrl,
      'invite_template': instance.inviteTemplate,
      'confirmed_template': instance.confirmedTemplate,
      'declined_template': instance.declinedTemplate,
      'workflow_state': instance.workflowState,
      'is_featured': instance.isFeatured,
      'status': instance.status,
      'role': instance.role,
    };
