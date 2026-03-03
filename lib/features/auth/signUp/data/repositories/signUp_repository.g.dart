// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signUp_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(signupRepository)
const signupRepositoryProvider = SignupRepositoryProvider._();

final class SignupRepositoryProvider extends $FunctionalProvider<
    SignupRepository,
    SignupRepository,
    SignupRepository> with $Provider<SignupRepository> {
  const SignupRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'signupRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$signupRepositoryHash();

  @$internal
  @override
  $ProviderElement<SignupRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SignupRepository create(Ref ref) {
    return signupRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignupRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignupRepository>(value),
    );
  }
}

String _$signupRepositoryHash() => r'd9a891a1fe21d4120ef0ce67e931f85e3a004a11';
