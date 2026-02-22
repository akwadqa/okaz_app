import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_response.freezed.dart';
part 'signup_response.g.dart';

@freezed
abstract class SignupResponseModel with _$SignupResponseModel {
  const SignupResponseModel._(); // لإضافة getters مخصصة

  const factory SignupResponseModel({
    // @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String? lastName,
    @JsonKey(name: 'mobile_no') required String mobileNo,
  }) = _SignupResponseModel;

  factory SignupResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseModelFromJson(json);

  String get fullName => '$firstName $lastName';
}
