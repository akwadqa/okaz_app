import 'package:flutter_google_places_hoc081098/google_maps_webservice_places.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapState {
  final LatLng ?latLng;
  final LatLng? initialLatLng;
  final List<Prediction> predictions;
  final AsyncValue<void> selectedPlace;

  const MapState({
    required this.latLng,
    this.initialLatLng,
    this.predictions = const [],
    this.selectedPlace = const AsyncData(null),
  });

  MapState copyWith({
    LatLng? latLng,
    LatLng? initialLatLng,
    List<Prediction>? predictions,
    AsyncValue<void>? selectedPlace,
  }) {
    return MapState(
      latLng: latLng ?? this.latLng,
      initialLatLng: initialLatLng ?? this.initialLatLng,
      predictions: predictions ?? this.predictions,
      selectedPlace: selectedPlace ?? this.selectedPlace,
    );
  }
}
