import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:okaz/src/application/router/app_routes.dart';

class LocationWidget extends StatelessWidget {
  final String? id;
  const LocationWidget({super.key, required this.latlng, this.id});
  final LatLng latlng;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: double.infinity,
        height: 194,
        child: GoogleMap(
          onTap: (_) => context.push(AppRoutes.scanQr, extra: id),
          scrollGesturesEnabled: false,
          markers: {
            Marker(
              markerId: MarkerId('${latlng.latitude} ${latlng.longitude} $id'),

              position: latlng,
            ),
          },
          initialCameraPosition: CameraPosition(target: latlng, zoom: 14),
        ),
      ),
    );
  }
}
