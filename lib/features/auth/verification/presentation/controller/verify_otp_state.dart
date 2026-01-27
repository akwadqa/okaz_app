// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/auth/signIn/domain/model/signin_response_model.dart';
import 'package:okaz/features/auth/verification/domain/model/verify_otp_response_model.dart';

class VerifyOtpState {
  final VerifyOtpResponseModel? verifyOtpResponseModel;
  final AsyncValue<SigninResponseModel>? signinResponseModel;


  VerifyOtpState(
      {this.signinResponseModel,
      this.verifyOtpResponseModel,
   });

  VerifyOtpState copyWith({
    VerifyOtpResponseModel? verifyOtpResponseModel,
    AsyncValue<SigninResponseModel>? signinResponseModel,

  }) {
    return VerifyOtpState(
      signinResponseModel: signinResponseModel ?? this.signinResponseModel,
      verifyOtpResponseModel:
          verifyOtpResponseModel ?? this.verifyOtpResponseModel,

    );
  }
}
