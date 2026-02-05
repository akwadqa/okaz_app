// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddProductController)
const addProductControllerProvider = AddProductControllerProvider._();

final class AddProductControllerProvider
    extends $AsyncNotifierProvider<AddProductController, AddProductState> {
  const AddProductControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addProductControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addProductControllerHash();

  @$internal
  @override
  AddProductController create() => AddProductController();
}

String _$addProductControllerHash() =>
    r'dad6520e7089378ab66fa81d5bd833a322dcd314';

abstract class _$AddProductController extends $AsyncNotifier<AddProductState> {
  FutureOr<AddProductState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<AddProductState>, AddProductState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AddProductState>, AddProductState>,
              AsyncValue<AddProductState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
