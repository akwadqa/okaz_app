// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CommentController)
const commentControllerProvider = CommentControllerProvider._();

final class CommentControllerProvider
    extends $AsyncNotifierProvider<CommentController, CommentState> {
  const CommentControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'commentControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$commentControllerHash();

  @$internal
  @override
  CommentController create() => CommentController();
}

String _$commentControllerHash() => r'75fb90bf3656e2ebbec16a623678e6d0830a7dd7';

abstract class _$CommentController extends $AsyncNotifier<CommentState> {
  FutureOr<CommentState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<CommentState>, CommentState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<CommentState>, CommentState>,
        AsyncValue<CommentState>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
