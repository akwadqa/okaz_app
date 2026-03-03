// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignupResponseModel _$SignupResponseModelFromJson(Map<String, dynamic> json) =>
    _SignupResponseModel(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String?,
      mobileNo: json['mobile_no'] as String,
    );

Map<String, dynamic> _$SignupResponseModelToJson(
        _SignupResponseModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'mobile_no': instance.mobileNo,
    };
