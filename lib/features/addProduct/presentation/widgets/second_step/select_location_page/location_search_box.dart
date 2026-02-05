import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places_hoc081098/google_maps_webservice_places.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:okaz/features/addProduct/presentation/controller/map_controller/map_controller.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';

class LocationSearchBox extends ConsumerStatefulWidget {
  final Function(LatLng latLng) onSelect;

  const LocationSearchBox({super.key, required this.onSelect});

  @override
  ConsumerState<LocationSearchBox> createState() => _LocationSearchBoxState();
}

class _LocationSearchBoxState extends ConsumerState<LocationSearchBox> {
  final TextEditingController _controller = TextEditingController();
  Timer? _debounce;

  @override
  void dispose() {
    _controller.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 400), () {
      ref.read(mapControllerProvider.notifier).searchLocation(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(mapControllerProvider);
    final predictions =
        state.value?.predictions ?? [Prediction(placeId: "ss", id: "mm")];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SearchField(
          controller: _controller,
          hint: context.tr('search'),
          onChanged: _onSearchChanged,
          onClear: () {
            _controller.clear();
            ref.read(mapControllerProvider.notifier).clearPredictions();
            setState(() {});
          },
        ),

        const SizedBox(height: 6),

        if (predictions.isNotEmpty)
        _PredictionsList(
          predictions: predictions,
          onTap: (p) async {
            final latLng = await ref
                .read(mapControllerProvider.notifier)
                .selectPlace(p.placeId);

            if (latLng != null) {
              widget.onSelect(latLng);
              _controller.text = p.description;
              ref.read(mapControllerProvider.notifier).clearPredictions();
              FocusScope.of(context).unfocus(); // 👈 close keyboard
              setState(() {});
            }
          },
        ),
      ],
    );
  }
}

class _SearchField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final ValueChanged<String> onChanged;
  final VoidCallback onClear;

  const _SearchField({
    required this.controller,
    required this.hint,
    required this.onChanged,
    required this.onClear,
  });
  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffE8E8E8)),
      borderRadius: BorderRadius.circular(24),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      cursorColor: AppColors.black,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(4),
        prefixIcon: Icon(Icons.search, color: AppColors.grayHint),
        suffixIcon: controller.text.isNotEmpty
            ? IconButton(icon: const Icon(Icons.close), onPressed: onClear)
            : null,
        hintText: " ابحث هنا",
        hintStyle: AppTextStyle.interRegular16.copyWith(
          color: AppColors.grayHint,
        ),
        filled: true,
        fillColor: AppColors.white,
        border: _border(),
        errorBorder: _border(),
        enabledBorder: _border(),
        focusedBorder: _border(),
        disabledBorder: _border(),
        focusedErrorBorder: _border(),
      ),
    ).symmetricPadding(horizontal: 16);

    // TextField(
    // controller: controller,
    // onChanged: onChanged,
    //   decoration: InputDecoration(
    //     hintText: hint,
    //     filled: true,
    //     fillColor: Colors.white,
    //     prefixIcon: const Icon(Icons.location_on_outlined),
    // suffixIcon: controller.text.isNotEmpty
    //     ? IconButton(
    //         icon: const Icon(Icons.close),
    //         onPressed: onClear,
    //       )
    //     : null,
    //     contentPadding:
    //         const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
    //     border: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(12),
    //       borderSide: BorderSide.none,
    //     ),
    //   ),
    // );
  }
}

class _PredictionsList extends StatelessWidget {
  final List predictions;
  final Function(dynamic) onTap;

  const _PredictionsList({required this.predictions, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,

        // color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child:
          // Text("data")
          ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 8),

            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            shrinkWrap: true, // Shrink the ListView to fit its content
            physics: const ClampingScrollPhysics(),

            itemCount: predictions.length,
            separatorBuilder: (context, index) =>
                Divider(height: 1, color: AppColors.grayBorder),
            itemBuilder: (_, index) {
              final p = predictions[index];
              return 
              // Text(p.description);
               ListTile(
                leading:  Icon(Icons.location_on,color: AppColors.primary,),
                title: Text(p.description),
                // titleTextStyle: AppTextStyle.rubikBold18,

                onTap: () => onTap(p),
              );
            },
          ),
    );
  }
}
