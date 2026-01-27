import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
abstract class EventModel with _$EventModel {
  const factory EventModel({
    @JsonKey(name: 'occasion_id') required String occasionId,
    required String title,
    required String type,
    required String date,
    required String time,
    @JsonKey(name: 'map_link') required String mapLink,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'invite_template') String? inviteTemplate,
    @JsonKey(name: 'confirmed_template') String? confirmedTemplate,
    @JsonKey(name: 'declined_template') String? declinedTemplate,
    @JsonKey(name: 'workflow_state') required String workflowState,
    @JsonKey(name: 'is_featured',includeFromJson: false,defaultValue: 0)  int? isFeatured,
    required String status,
    required String role,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);
  factory EventModel.placeholder() => const EventModel(
        occasionId: "occasionId",
        title: "title",
        type: "type",
        date: "date",
        time: "time",
        mapLink: "mapLink",
        imageUrl: "/files/event_image_20251221172218_test.jpg",
        workflowState: "workflowState",
        isFeatured: 0,
        status: "status",
        role: "role");
}
