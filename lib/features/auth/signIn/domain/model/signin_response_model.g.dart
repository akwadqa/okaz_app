// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SigninResponseModel _$SigninResponseModelFromJson(Map<String, dynamic> json) =>
    _SigninResponseModel(
      mobileNumber: json['mobile_number'] as String,
      remainingAttempts: (json['remaining_attempts'] as num).toInt(),
      allowLoginAfter: (json['allow_login_after'] as num).toInt(),
      validation: LoginValidation.fromJson(
        json['validation'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$SigninResponseModelToJson(
  _SigninResponseModel instance,
) => <String, dynamic>{
  'mobile_number': instance.mobileNumber,
  'remaining_attempts': instance.remainingAttempts,
  'allow_login_after': instance.allowLoginAfter,
  'validation': instance.validation,
};

_LoginValidation _$LoginValidationFromJson(Map<String, dynamic> json) =>
    _LoginValidation(
      mobileNumber: json['mobile_number'] as String,
      userExist: json['user_exist'] as bool,
    );

Map<String, dynamic> _$LoginValidationToJson(_LoginValidation instance) =>
    <String, dynamic>{
      'mobile_number': instance.mobileNumber,
      'user_exist': instance.userExist,
    };
