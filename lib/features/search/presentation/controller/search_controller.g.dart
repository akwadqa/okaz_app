// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchController)
const searchControllerProvider = SearchControllerProvider._();

final class SearchControllerProvider extends $AsyncNotifierProvider<
    SearchController, List<ProductDetailsModel>> {
  const SearchControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'searchControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$searchControllerHash();

  @$internal
  @override
  SearchController create() => SearchController();
}

String _$searchControllerHash() => r'3cc970e2bcc1d7b3a798fafcd20d0be222765086';

abstract class _$SearchController
    extends $AsyncNotifier<List<ProductDetailsModel>> {
  FutureOr<List<ProductDetailsModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<ProductDetailsModel>>,
        List<ProductDetailsModel>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<ProductDetailsModel>>,
            List<ProductDetailsModel>>,
        AsyncValue<List<ProductDetailsModel>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
