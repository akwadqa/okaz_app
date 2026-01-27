import 'package:freezed_annotation/freezed_annotation.dart';

part 'featured_event_model.freezed.dart';
part 'featured_event_model.g.dart';

@freezed
abstract class FeaturedEventModel with _$FeaturedEventModel {
  const factory FeaturedEventModel({
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
    @JsonKey(name: 'is_featured') required int isFeatured,
    required String status,
    required String role,
  }) = _FeaturedEventModel;

  factory FeaturedEventModel.fromJson(Map<String, dynamic> json) =>
      _$FeaturedEventModelFromJson(json);
}
