// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(filterRepository)
const filterRepositoryProvider = FilterRepositoryProvider._();

final class FilterRepositoryProvider extends $FunctionalProvider<
    FilterRepository,
    FilterRepository,
    FilterRepository> with $Provider<FilterRepository> {
  const FilterRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'filterRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$filterRepositoryHash();

  @$internal
  @override
  $ProviderElement<FilterRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FilterRepository create(Ref ref) {
    return filterRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FilterRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FilterRepository>(value),
    );
  }
}

String _$filterRepositoryHash() => r'357200bc3c422099c32f1de2283bb7eb0c1f0b9c';
