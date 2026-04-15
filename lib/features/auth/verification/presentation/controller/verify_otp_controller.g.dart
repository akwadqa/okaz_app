// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(VerifyOtpController)
const verifyOtpControllerProvider = VerifyOtpControllerProvider._();

final class VerifyOtpControllerProvider
    extends $AsyncNotifierProvider<VerifyOtpController, VerifyOtpState> {
  const VerifyOtpControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'verifyOtpControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$verifyOtpControllerHash();

  @$internal
  @override
  VerifyOtpController create() => VerifyOtpController();
}

String _$verifyOtpControllerHash() =>
    r'2a431dae01d77aca851b9a5568c92e1aa250ad2a';

abstract class _$VerifyOtpController extends $AsyncNotifier<VerifyOtpState> {
  FutureOr<VerifyOtpState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<VerifyOtpState>, VerifyOtpState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<VerifyOtpState>, VerifyOtpState>,
        AsyncValue<VerifyOtpState>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
