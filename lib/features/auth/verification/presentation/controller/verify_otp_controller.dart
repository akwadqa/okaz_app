import 'package:flutter/material.dart';
import 'package:okaz/features/auth/signIn/data/repositories/sign_in_repository.dart';
import 'package:okaz/features/auth/signIn/presentation/controller/sign_in_controller.dart';
import 'package:okaz/features/auth/verification/data/repositories/verify_otp_repository.dart';
import 'package:okaz/features/auth/verification/presentation/controller/verify_otp_state.dart';
import 'package:okaz/src/application/data/user_information/user_information.dart';
import 'package:okaz/src/core/notifications/services/notification_service.dart';
import 'package:okaz/src/infrastructure/storage/local_storage_service.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'verify_otp_controller.g.dart';

@riverpod
class VerifyOtpController extends _$VerifyOtpController {
  @override
  FutureOr<VerifyOtpState> build() => VerifyOtpState();
  final TextEditingController phoneController = TextEditingController();

  Future<void> verifyOtp(String phone, String otp) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(verifyOtpRepositoryProvider);
      final response = await repo.verifyOtp(phone, otp);
      final info = UserInformation(
          token: '',
          fullName: response.data!.fullName,
          email: response.data!.mobileNo,
          mobileNumber: response.data!.mobileNo,
          image: response.data!.image);

      await ref
          .read(localStorageServiceProvider)
          .saveToken(response.data!.token);
      await ref.read(localStorageServiceProvider).saveUserInfo(info);
      // final token = await ref.read(localStorageServiceProvider).getToken();
      // Dev.logLine(token);
      ref.read(signInControllerProvider.notifier).checkPhoneFilled(false);
      await ref
          .read(notificationsServiceProvider)
          .sendDeviceToken(info.mobileNumber ?? "");
      return state.value!.copyWith(verifyOtpResponseModel: response.data);
    });
  }

  Future<void> resendCoe(String phone) async {
    state =
        AsyncData(state.value!.copyWith(signinResponseModel: AsyncLoading()));

    state = AsyncData(state.value!.copyWith(
        signinResponseModel: await AsyncValue.guard(() async {
      final repo = ref.read(signInRepositoryProvider);
      final response = await repo.signIn(phone);

      return Future.value(response.data);
    })));
    // state = const AsyncLoading();
    // state = await AsyncValue.guard(() async {
    //   final repo = ref.read(signInRepositoryProvider);
    //   final response = await repo.signIn(phone);

    //   return state.value!.copyWith(signinResponseModel: response.data);
    // });
  }
}
