// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_profile_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProfileController)
const profileControllerProvider = ProfileControllerProvider._();

final class ProfileControllerProvider
    extends $AsyncNotifierProvider<ProfileController, ProfileState> {
  const ProfileControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'profileControllerProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$profileControllerHash();

  @$internal
  @override
  ProfileController create() => ProfileController();
}

String _$profileControllerHash() => r'b725d6e7a18c0f953bfa1b26341b673ae5317618';

abstract class _$ProfileController extends $AsyncNotifier<ProfileState> {
  FutureOr<ProfileState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<ProfileState>, ProfileState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<ProfileState>, ProfileState>,
        AsyncValue<ProfileState>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
