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
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$profileControllerHash();

  @$internal
  @override
  ProfileController create() => ProfileController();
}

String _$profileControllerHash() => r'ca654b0123f2854ab31cf6dcae89e307eaf99828';

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
