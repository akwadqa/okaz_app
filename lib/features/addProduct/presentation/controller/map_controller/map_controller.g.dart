// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MapController)
const mapControllerProvider = MapControllerProvider._();

final class MapControllerProvider
    extends $AsyncNotifierProvider<MapController, MapState> {
  const MapControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'mapControllerProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$mapControllerHash();

  @$internal
  @override
  MapController create() => MapController();
}

String _$mapControllerHash() => r'82953bef042e30f1d53027bb308b37bd1b479260';

abstract class _$MapController extends $AsyncNotifier<MapState> {
  FutureOr<MapState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<MapState>, MapState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<MapState>, MapState>,
        AsyncValue<MapState>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
