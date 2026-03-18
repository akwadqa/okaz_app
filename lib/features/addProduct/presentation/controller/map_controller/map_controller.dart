import 'dart:async';
import 'dart:developer';
import 'package:flutter_google_places_hoc081098/google_maps_webservice_places.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:okaz/features/addProduct/presentation/controller/add_product_controller.dart';
import 'package:okaz/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:geocoding/geocoding.dart';
import 'map_state.dart';

part 'map_controller.g.dart';

@Riverpod(keepAlive: true)
class MapController extends _$MapController {
  late final GoogleMapsPlaces _places;

  @override
  FutureOr<MapState> build() async {
    _places = GoogleMapsPlaces(
      apiKey: ServicesUrls.mapApiKey,
      apiHeaders: await const GoogleApiHeaders().getHeaders(),
    );

    final addState = ref.read(addProductControllerProvider).value;

    final initial = addState?.latLng ?? const LatLng(25.2854, 51.5310);
    return MapState(
      latLng: null,
      initialLatLng: initial,
    );
  }

  /// Map tap
  void changeLatLng(double lat, double lng) {
    state = AsyncData(
      state.value!.copyWith(latLng: LatLng(lat, lng)),
    );
  }

  /// Search
  Future<void> searchLocation(String value) async {
    if (value.isEmpty) {
      clearPredictions();
      return;
    }

    try {
      final res = await _places.autocomplete(
        value,
        language: 'ar',
        region: "QA",
        components: [Component(Component.country, "QA")],
      );

      state = AsyncData(
        state.value!.copyWith(predictions: res.predictions),
      );
    } catch (e) {
      Dev.logError('Places error: $e');
    }
  }

  /// Select from search
  Future<LatLng?> selectPlace(String placeId) async {
    final res = await _places.getDetailsByPlaceId(placeId);

    final loc = res.result.geometry?.location;
    if (loc == null) return null;

    final latLng = LatLng(loc.lat, loc.lng);

    state = AsyncData(
      state.value!.copyWith(
        latLng: latLng,
        predictions: [],
      ),
    );

    return latLng;
  }

  void clearPredictions() {
    state = AsyncData(
      state.value!.copyWith(predictions: []),
    );
  }

  /// Confirm
  // Future<void> confirmLocation() async {
  //   state = AsyncData(
  //     state.value!.copyWith(selectedPlace: const AsyncLoading()),
  //   );

  //   try {
  //     await Future.delayed(const Duration(seconds: 1));
  //     ref.read(addProductControllerProvider.notifier).setLatLng(state.value?.latLng??state.value!.initialLatLng!);
  //     state = AsyncData(
  //       state.value!.copyWith(selectedPlace: const AsyncData(null)),
  //     );
  //   } catch (e, st) {
  //     state = AsyncData(
  //       state.value!.copyWith(selectedPlace: AsyncError(e, st)),
  //     );
  //   }
  // }
  Future<String?> _getCityFromLatLng(LatLng latLng) async {
    try {
      final placemarks = await placemarkFromCoordinates(
        latLng.latitude,
        latLng.longitude,
      );

      if (placemarks.isEmpty) return null;

      final place = placemarks.first;

      return place.locality ?? place.subAdministrativeArea;
    } catch (e) {
      Dev.logError("Geocoding error: $e");
      return null;
    }
  }

  Future<void> confirmLocation() async {
    state = AsyncData(
      state.value!.copyWith(selectedPlace: const AsyncLoading()),
    );

    try {
      final latLng = state.value?.latLng ?? state.value!.initialLatLng!;

      /// 🔹 get city
      final city = await _getCityFromLatLng(latLng);

      /// 🔹 send location to AddPostController
      final addCtrl = ref.read(addProductControllerProvider.notifier);

      addCtrl.setLatLng(latLng);

      if (city != null) {
        addCtrl.setCity(city);
      }

      state = AsyncData(
        state.value!
            .copyWith(selectedPlace: const AsyncData(null), latLng: latLng),
      );
    } catch (e, st) {
      state = AsyncData(
        state.value!.copyWith(
          selectedPlace: AsyncError(e, st),
        ),
      );
    }
  }

  /// 🔹 Get LatLng from placeId (search box)
  // Future<LatLng?> getPlaceLocation(String placeId) async {
  //   try {
  //     final res = await _places.fetchPlace(
  //       placeId,
  //       fields: [PlaceField.Location],
  //     );

  //     final loc = res.place?.latLng;
  //     if (loc == null) return null;

  //     final latLng = LatLng(loc.lat, loc.lng);

  //     state = AsyncData(
  //       state.value!.copyWith(latLng: latLng),
  //     );

  //     return latLng;
  //   } catch (e) {
  //     return null;
  //   }
  // }

  /// 🔹 Confirm selection (reverse geocode if needed)
  Future<void> getPlaceInfoFromLatLng() async {
    state = AsyncData(
      state.value!.copyWith(
        selectedPlace: const AsyncLoading(),
      ),
    );

    try {
      final latLng = state.value!.latLng;

      /// 👉 Here you can call backend / save lat lng / reverse geocode
      /// example: repository.saveLocation(eventId, latLng)

      await Future.delayed(const Duration(seconds: 1));

      state = AsyncData(
        state.value!.copyWith(
          selectedPlace: const AsyncData(null),
        ),
      );
    } catch (e, st) {
      state = AsyncData(
        state.value!.copyWith(
          selectedPlace: AsyncError(e, st),
        ),
      );
    }
  }
}

// @riverpod
// class MapController extends _$MapController {
//   late final FlutterGooglePlacesSdk _places;

//   @override
//   FutureOr<MapState> build() async {
//     _places = FlutterGooglePlacesSdk('YOUR_GOOGLE_API_KEY');

//     /// default location (Qatar for example)
//     final initial = LatLng(25.2854, 51.5310);

//     return MapState(
//       latLng: initial,
//       initialLatLng: initial,
//     );
//   }

//   /// 🔹 Change location when tapping map
//   void changeLatlng(double lat, double lng) {
//     state = AsyncData(
//       state.value!.copyWith(
//         latLng: LatLng(lat, lng),
//       ),
//     );
//   }

//   /// 🔹 Reset to initial location
//   void resetToInitial() {
//     final init = state.value!.initialLatLng;
//     if (init == null) return;

//     state = AsyncData(
//       state.value!.copyWith(latLng: init),
//     );
//   }

  // /// 🔹 Get LatLng from placeId (search box)
  // Future<LatLng?> getPlaceLocation(String placeId) async {
  //   try {
  //     final res = await _places.fetchPlace(
  //       placeId,
  //       fields: [PlaceField.Location],
  //     );

  //     final loc = res.place?.latLng;
  //     if (loc == null) return null;

  //     final latLng = LatLng(loc.lat, loc.lng);

  //     state = AsyncData(
  //       state.value!.copyWith(latLng: latLng),
  //     );

  //     return latLng;
  //   } catch (e) {
  //     return null;
  //   }
  // }

  // /// 🔹 Confirm selection (reverse geocode if needed)
  // Future<void> getPlaceInfoFromLatLng([String? eventId]) async {
  //   state = AsyncData(
  //     state.value!.copyWith(
  //       selectedPlace: const AsyncLoading(),
  //     ),
  //   );

  //   try {
  //     final latLng = state.value!.latLng;

  //     /// 👉 Here you can call backend / save lat lng / reverse geocode
  //     /// example: repository.saveLocation(eventId, latLng)

  //     await Future.delayed(const Duration(seconds: 1));

  //     state = AsyncData(
  //       state.value!.copyWith(
  //         selectedPlace: const AsyncData(null),
  //       ),
  //     );
  //   } catch (e, st) {
  //     state = AsyncData(
  //       state.value!.copyWith(
  //         selectedPlace: AsyncError(e, st),
  //       ),
  //     );
  //   }
  // }
// }
