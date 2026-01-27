import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/auth/signIn/presentation/controller/sign_in_controller.dart';
import 'package:okaz/features/auth/verification/presentation/controller/verify_otp_controller.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class VerificationScreenTimer extends ConsumerStatefulWidget {
  const VerificationScreenTimer({super.key});

  @override
  ConsumerState<VerificationScreenTimer> createState() =>
      _VerificationScreenTimerState();
}

class _VerificationScreenTimerState
    extends ConsumerState<VerificationScreenTimer> {
  late int _remainingSeconds;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
    // _remainingSeconds = 120;
    _remainingSeconds = ref.read(
      verifyOtpControllerProvider.select((val) {
        return val.value?.signinResponseModel?.value?.allowLoginAfter ?? 60;
      }),
    );
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        timer.cancel();
        ref.read(signInControllerProvider.notifier)
          ..makeResendButtonVisible(true)
          ..makeConfirmButtonVisible(false);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String get timerText {
    final minutes = (_remainingSeconds ~/ 60).toString().padLeft(2, '0');
    final seconds = (_remainingSeconds % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(verifyOtpControllerProvider, (pre, next) {
      if (next is AsyncData) {
        _timer?.cancel();
        ref
            .read(signInControllerProvider.notifier)
            .makeResendButtonVisible(false);
        startTimer();
        _remainingSeconds = ref.read(
          verifyOtpControllerProvider.select((val) {
            return val
                .asData!.value!.signinResponseModel!.value!.allowLoginAfter;
          }),
        );
      }
    });

    return Text.rich(
      style: AppTextStyle.rubikRegular14.copyWith(color: AppColors.primary),
      TextSpan(
        children: [
          TextSpan(text: context.tr('verificationExpired')),
          TextSpan(text: '$timerText '),
          TextSpan(text: context.tr('seconds')),
        ],
      ),
    );
  }
}
