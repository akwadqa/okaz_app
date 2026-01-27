// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(verifyOtpRepository)
const verifyOtpRepositoryProvider = VerifyOtpRepositoryProvider._();

final class VerifyOtpRepositoryProvider
    extends
        $FunctionalProvider<
          VerifyOtpRepository,
          VerifyOtpRepository,
          VerifyOtpRepository
        >
    with $Provider<VerifyOtpRepository> {
  const VerifyOtpRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'verifyOtpRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$verifyOtpRepositoryHash();

  @$internal
  @override
  $ProviderElement<VerifyOtpRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  VerifyOtpRepository create(Ref ref) {
    return verifyOtpRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VerifyOtpRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VerifyOtpRepository>(value),
    );
  }
}

String _$verifyOtpRepositoryHash() =>
    r'be592a2642ab188150b01e73fc2d645e3007d791';
