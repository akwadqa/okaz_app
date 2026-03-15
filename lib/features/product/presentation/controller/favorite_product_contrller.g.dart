// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_product_contrller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FavoriteProductContrller)
const favoriteProductContrllerProvider = FavoriteProductContrllerFamily._();

final class FavoriteProductContrllerProvider
    extends $AsyncNotifierProvider<FavoriteProductContrller, bool> {
  const FavoriteProductContrllerProvider._(
      {required FavoriteProductContrllerFamily super.from,
      required (
        String,
        bool,
      )
          super.argument})
      : super(
          retry: null,
          name: r'favoriteProductContrllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$favoriteProductContrllerHash();

  @override
  String toString() {
    return r'favoriteProductContrllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  FavoriteProductContrller create() => FavoriteProductContrller();

  @override
  bool operator ==(Object other) {
    return other is FavoriteProductContrllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$favoriteProductContrllerHash() =>
    r'4e73e875fdc0c52704cba905ea2cfc78294c25eb';

final class FavoriteProductContrllerFamily extends $Family
    with
        $ClassFamilyOverride<
            FavoriteProductContrller,
            AsyncValue<bool>,
            bool,
            FutureOr<bool>,
            (
              String,
              bool,
            )> {
  const FavoriteProductContrllerFamily._()
      : super(
          retry: null,
          name: r'favoriteProductContrllerProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  FavoriteProductContrllerProvider call(
    String productId,
    bool isFavorite,
  ) =>
      FavoriteProductContrllerProvider._(argument: (
        productId,
        isFavorite,
      ), from: this);

  @override
  String toString() => r'favoriteProductContrllerProvider';
}

abstract class _$FavoriteProductContrller extends $AsyncNotifier<bool> {
  late final _$args = ref.$arg as (
    String,
    bool,
  );
  String get productId => _$args.$1;
  bool get isFavorite => _$args.$2;

  FutureOr<bool> build(
    String productId,
    bool isFavorite,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      _$args.$1,
      _$args.$2,
    );
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<bool>, bool>,
        AsyncValue<bool>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
