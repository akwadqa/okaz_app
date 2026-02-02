// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signUp_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignUpController)
const signUpControllerProvider = SignUpControllerProvider._();

final class SignUpControllerProvider
    extends $AsyncNotifierProvider<SignUpController, SignupResponseModel?> {
  const SignUpControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signUpControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signUpControllerHash();

  @$internal
  @override
  SignUpController create() => SignUpController();
}

String _$signUpControllerHash() => r'30d89d2ffb26ee3a7320ca963d7f86b0a97b8937';

abstract class _$SignUpController extends $AsyncNotifier<SignupResponseModel?> {
  FutureOr<SignupResponseModel?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<SignupResponseModel?>, SignupResponseModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<SignupResponseModel?>,
                SignupResponseModel?
              >,
              AsyncValue<SignupResponseModel?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
