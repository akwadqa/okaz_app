
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_notifications_model.freezed.dart';
part 'app_notifications_model.g.dart';
@freezed
abstract class AppNotificationsModel with _$AppNotificationsModel {
  const factory AppNotificationsModel({
    // @JsonKey(name: 'for_user') required String forUser,
    @JsonKey(name: 'content') required String emailContent,
    required String subject,

    @JsonKey(name: "creation") required DateTime creation,
  }) = _AppNotificationsModel;

  factory AppNotificationsModel.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationsModelFromJson(json);
}
