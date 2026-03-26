// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyOtpResponseModel _$VerifyOtpResponseModelFromJson(
        Map<String, dynamic> json) =>
    _VerifyOtpResponseModel(
      fullName: json['full_name'] as String,
      mobileNo: json['mobile_no'] as String,
      token: json['token'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$VerifyOtpResponseModelToJson(
        _VerifyOtpResponseModel instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'mobile_no': instance.mobileNo,
      'token': instance.token,
      'image': instance.image,
    };
