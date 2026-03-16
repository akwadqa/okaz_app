// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FilterController)
const filterControllerProvider = FilterControllerProvider._();

final class FilterControllerProvider
    extends $AsyncNotifierProvider<FilterController, FilterState> {
  const FilterControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'filterControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$filterControllerHash();

  @$internal
  @override
  FilterController create() => FilterController();
}

String _$filterControllerHash() => r'b8a54b6c037375f131ade90cd1ce4621a35de83f';

abstract class _$FilterController extends $AsyncNotifier<FilterState> {
  FutureOr<FilterState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<FilterState>, FilterState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<FilterState>, FilterState>,
        AsyncValue<FilterState>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
