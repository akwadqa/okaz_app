// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignupResponseModel _$SignupResponseModelFromJson(Map<String, dynamic> json) =>
    _SignupResponseModel(
      userId: json['user_id'] as String,
      subscriber: json['subscriber'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      mobileNo: json['mobile_no'] as String,
    );

Map<String, dynamic> _$SignupResponseModelToJson(
  _SignupResponseModel instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'subscriber': instance.subscriber,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'email': instance.email,
  'mobile_no': instance.mobileNo,
};
