import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../controller/map_controller/map_controller.dart';
import '../../../../../../src/core/shared_widgets/app_alert.dart';
import '../../../../../../src/core/shared_widgets/custom_button_widget.dart';
import '../../../../../../src/core/utils/extenssions/widget_extensions.dart';
import '../../../../../../src/resourses/color_manager/app_colors.dart';
import '../../../../../../src/resourses/font_manager/app_text_style.dart';

import 'location_search_box.dart';
import 'select_location_google_map.dart';

class SelectLocationPage extends ConsumerStatefulWidget {
  final String? id;
  const SelectLocationPage({super.key, required this.id});

  @override
  ConsumerState<SelectLocationPage> createState() => _SelectLocationPageState();
}

class _SelectLocationPageState extends ConsumerState<SelectLocationPage> {
  late Completer<GoogleMapController> _controller;

  @override
  void initState() {
    super.initState();
    _controller = Completer<GoogleMapController>();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      mapControllerProvider.select((v) => v.value!.selectedPlace),
      (prev, next) async {
        if (next is AsyncLoading) {
          AppAlert.showLoadingDialog(context);
        }

        if (next is AsyncData) {
          if (context.canPop()) {
            context.pop();
          }
          context.pop(); // close page
        }

        if (next is AsyncError) {
          context.pop(); // close page

          BotToast.showText(
            text: next.error.toString(),
            contentColor: AppColors.red,
          );
        }
      },
    );

    return Scaffold(body: _buildMap(context));
  }

  SizedBox _buildConfirmButton(BuildContext context) {
    return SizedBox(
      // height: 100.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 7,
            child: CustomButtonWidget(
              text: '',
              onTap: () async {
                // if (widget.id == null) {
                //   await ref
                //       .read(mapControllerProvider.notifier)
                //       .getPlaceInfoFromLatLng();
                // } else {

                // await ref
                //     .read(mapControllerProvider.notifier)
                //     .getPlaceInfoFromLatLng();
                await ref
                    .read(mapControllerProvider.notifier)
                    .confirmLocation();
                // Navigator.of(context).pop();
                // }
              },
              isFiled: true,
              height: 55,
              width: 260,
              backgroundColor: AppColors.primary,
              child: Text(
                context.tr('confirm'),
                style:
                    AppTextStyle.nunitoBold16.copyWith(color: AppColors.white),
              ),
            ),
          ),
          // 12.horizontalSpace,
          Spacer(),
          Flexible(
            flex: 1,
            child: IconButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(AppColors.white),
              ),
              onPressed: () {
                final location =
                    ref.watch(mapControllerProvider).value!.initialLatLng;

                ref
                    .read(mapControllerProvider.notifier)
                    .changeLatLng(location!.longitude, location.longitude);
                setState(() {});
              },
              icon: Icon(Icons.my_location_outlined),
            ),
          ),
        ],
      ),
    );
  }

  Stack _buildMap(BuildContext context) {
    final local = context.locale.languageCode;
    return Stack(
      children: [
        SelectLocationGoogleMap(_controller),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 64),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: GestureDetector(
                        onTap: () => context.pop(),
                        child: CircleAvatar(
                            backgroundColor: AppColors.primary,
                            child: Center(
                                child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ).onlyPadding(start: 6)))),
                  ),
                  Expanded(
                    child: LocationSearchBox(
                      onSelect: (latLng) async {
                        final controller = await _controller.future;
                        controller.animateCamera(
                          CameraUpdate.newLatLng(
                            LatLng(latLng.latitude, latLng.longitude),
                          ),
                        );
                      },
                    ),

                    // LocationSearchBox(
                    //   onSelect: (id, des) async {
                    //     if (widget.id == null) {
                    //       final notifier = ref.read(
                    //         mapControllerProvider.notifier,
                    //       );

                    //       final latLng = await notifier.getPlaceLocation(id);

                    //       if (latLng != null) {
                    //         final GoogleMapController mapController =
                    //             await _controller.future;

                    //         mapController.animateCamera(
                    //           CameraUpdate.newLatLng(
                    //             LatLng(latLng.latitude , latLng.longitude),
                    //           ),
                    //         );
                    //       }
                    //     } else {
                    //       final notifier = ref.read(
                    //         mapControllerProvider.notifier,
                    //       );

                    //       final latLng = await notifier.getPlaceLocation(id);

                    //       if (latLng != null) {
                    //         final GoogleMapController mapController =
                    //             await _controller.future;

                    //         mapController.animateCamera(
                    //           CameraUpdate.newLatLng(
                    //             LatLng(latLng.latitude, latLng.longitude),
                    //           ),
                    //         );
                    //       }
                    //     }
                    //   },
                    // ),
                  ),
                ],
              ),
              Spacer(),
              _buildConfirmButton(context),
            ],
          ),
        ),
      ],
    );
  }
}
