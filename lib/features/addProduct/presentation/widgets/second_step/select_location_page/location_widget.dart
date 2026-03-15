import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:okaz/features/addProduct/presentation/controller/add_product_controller.dart';
import 'package:okaz/features/addProduct/presentation/controller/map_controller/map_controller.dart';
import 'package:okaz/src/application/router/app_routes.dart';

class LocationWidget extends ConsumerWidget {
  final String? id;
  const LocationWidget({super.key, required this.latlng, this.id});
  final LatLng latlng;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
final LatLng currentLatLng = ref.watch(mapControllerProvider
    .select((s) => s.value?.latLng))??ref.watch(addProductControllerProvider
    .select((s) => s.value?.latLng))??latlng; 
       return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: double.infinity,
        height: 194,
        child: GoogleMap(
          onTap: (_) => context.push(AppRoutes.selectLocationScreen, extra: id),
          scrollGesturesEnabled: false,
          markers: {
            Marker(
              markerId: MarkerId('${currentLatLng.latitude} ${currentLatLng.longitude} $id'),

              position: currentLatLng,
            ),
          },
          initialCameraPosition: CameraPosition(target: currentLatLng, zoom: 12),

        ),
      ),
    );
  }
}
