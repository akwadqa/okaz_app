// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_notifications_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppNotificationsModel _$AppNotificationsModelFromJson(
  Map<String, dynamic> json,
) => _AppNotificationsModel(
  emailContent: json['content'] as String,
  subject: json['subject'] as String,
  creation: DateTime.parse(json['creation'] as String),
);

Map<String, dynamic> _$AppNotificationsModelToJson(
  _AppNotificationsModel instance,
) => <String, dynamic>{
  'content': instance.emailContent,
  'subject': instance.subject,
  'creation': instance.creation.toIso8601String(),
};
