// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_post_respository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(updatePostReposirory)
const updatePostReposiroryProvider = UpdatePostReposiroryProvider._();

final class UpdatePostReposiroryProvider extends $FunctionalProvider<
    UpdatePostRespository,
    UpdatePostRespository,
    UpdatePostRespository> with $Provider<UpdatePostRespository> {
  const UpdatePostReposiroryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'updatePostReposiroryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$updatePostReposiroryHash();

  @$internal
  @override
  $ProviderElement<UpdatePostRespository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UpdatePostRespository create(Ref ref) {
    return updatePostReposirory(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdatePostRespository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdatePostRespository>(value),
    );
  }
}

String _$updatePostReposiroryHash() =>
    r'39e853a3ab41e876a96098abd784900b3d3d5597';
