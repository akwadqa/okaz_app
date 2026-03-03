// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_post_repositories.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(addPostRepositories)
const addPostRepositoriesProvider = AddPostRepositoriesProvider._();

final class AddPostRepositoriesProvider extends $FunctionalProvider<
    AddPostRepositories,
    AddPostRepositories,
    AddPostRepositories> with $Provider<AddPostRepositories> {
  const AddPostRepositoriesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'addPostRepositoriesProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$addPostRepositoriesHash();

  @$internal
  @override
  $ProviderElement<AddPostRepositories> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AddPostRepositories create(Ref ref) {
    return addPostRepositories(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddPostRepositories value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddPostRepositories>(value),
    );
  }
}

String _$addPostRepositoriesHash() =>
    r'adc39d3880c1e64fc92a8d10bf735c400923bdc6';
