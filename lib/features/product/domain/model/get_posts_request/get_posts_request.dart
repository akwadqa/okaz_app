import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_posts_request.freezed.dart';
part 'get_posts_request.g.dart';

@freezed
abstract class GetPostsRequest with _$GetPostsRequest {
  const factory GetPostsRequest({
    List<String>? subcategories,
    List<RequestAttribute>? attributes,
    @JsonKey(name: 'post_type') String? postType,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'min_price') int? minPrice,
  }) = _GetPostsRequest;

  factory GetPostsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetPostsRequestFromJson(json);
}

@freezed
abstract class RequestAttribute with _$RequestAttribute {
  const factory RequestAttribute({
    String? title,
    String? value,
  }) = _RequestAttribute;

  factory RequestAttribute.fromJson(Map<String, dynamic> json) =>
      _$RequestAttributeFromJson(json);
}
