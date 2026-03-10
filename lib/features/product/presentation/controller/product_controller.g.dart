// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductController)
const productControllerProvider = ProductControllerProvider._();

final class ProductControllerProvider
    extends $AsyncNotifierProvider<ProductController, ProductState> {
  const ProductControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productControllerHash();

  @$internal
  @override
  ProductController create() => ProductController();
}

String _$productControllerHash() => r'a4b70c3b60bf373ae1643a97fe4fd8622c00e6e0';

abstract class _$ProductController extends $AsyncNotifier<ProductState> {
  FutureOr<ProductState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<ProductState>, ProductState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ProductState>, ProductState>,
              AsyncValue<ProductState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
