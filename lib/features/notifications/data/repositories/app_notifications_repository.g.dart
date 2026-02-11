// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_notifications_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appNotificationsRepository)
const appNotificationsRepositoryProvider =
    AppNotificationsRepositoryProvider._();

final class AppNotificationsRepositoryProvider
    extends
        $FunctionalProvider<
          AppNotificationsRepository,
          AppNotificationsRepository,
          AppNotificationsRepository
        >
    with $Provider<AppNotificationsRepository> {
  const AppNotificationsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appNotificationsRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appNotificationsRepositoryHash();

  @$internal
  @override
  $ProviderElement<AppNotificationsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AppNotificationsRepository create(Ref ref) {
    return appNotificationsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppNotificationsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppNotificationsRepository>(value),
    );
  }
}

String _$appNotificationsRepositoryHash() =>
    r'117573c2ccb97ea9da25583d22c5e1ca6253f08f';
