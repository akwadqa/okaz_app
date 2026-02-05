import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:okaz/src/core/shared_widgets/app_loader.dart';

import '../../../controller/map_controller/map_controller.dart';
class SelectLocationGoogleMap extends ConsumerWidget {
  const   SelectLocationGoogleMap(this.mapController, {super.key});

  final Completer<GoogleMapController> mapController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapAsync = ref.watch(mapControllerProvider);

    return mapAsync.when(
      loading: () => const SizedBox(),
      error: (_, __) => const SizedBox(),
      data: (state) {
        return GoogleMap(
          zoomControlsEnabled: false,
          myLocationButtonEnabled: false,
          onTap: (pos) {
            ref
                .read(mapControllerProvider.notifier)
                .changeLatLng(pos.latitude, pos.longitude);
          },
          markers: {
            Marker(
              markerId: const MarkerId('selected'),
              position: LatLng(
              state.latLng?.latitude??state.initialLatLng!.latitude,
              state.latLng?.longitude??state.initialLatLng!.longitude,
              ),
            ),
          },
          initialCameraPosition: CameraPosition(
            target: LatLng(
              state.latLng?.latitude??state.initialLatLng!.latitude,
              state.latLng?.longitude??state.initialLatLng!.longitude,
            ),
            zoom: 12.5,
          ),
          onMapCreated: mapController.complete,
        );
      },
    );
  }
}
