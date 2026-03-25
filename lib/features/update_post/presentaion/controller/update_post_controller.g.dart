// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_post_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UpdatePostController)
const updatePostControllerProvider = UpdatePostControllerProvider._();

final class UpdatePostControllerProvider
    extends $NotifierProvider<UpdatePostController, UpdatePostState> {
  const UpdatePostControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'updatePostControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$updatePostControllerHash();

  @$internal
  @override
  UpdatePostController create() => UpdatePostController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdatePostState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdatePostState>(value),
    );
  }
}

String _$updatePostControllerHash() =>
    r'8c663e6d019c78d4650becf169405d3cfa14dc79';

abstract class _$UpdatePostController extends $Notifier<UpdatePostState> {
  UpdatePostState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<UpdatePostState, UpdatePostState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<UpdatePostState, UpdatePostState>,
        UpdatePostState,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
