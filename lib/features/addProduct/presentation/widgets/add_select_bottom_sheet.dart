import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:okaz/src/core/shared_widgets/custom_button_widget.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

import 'app_scaled_radio.dart';

// class AddSelectBottomSheet<T> extends StatelessWidget {
//   final String title;
//   final List<T> items;
//   final T? selected;
//   final String Function(T) labelBuilder;
//   final ValueChanged<T> onSelected;

//   const AddSelectBottomSheet({
//     super.key,
//     required this.title,
//     required this.items,
//     required this.labelBuilder,
//     required this.onSelected,
//     this.selected,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             /// Header
//             Row(
//               children: [
//                 IconButton(
//                   icon: const Icon(Icons.close),
//                   onPressed: () => Navigator.pop(context),
//                 ),
//                 Expanded(
//                   child: Text(
//                     title,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//                 const SizedBox(width: 48),
//               ],
//             ),

//             const SizedBox(height: 12),

//             /// List
//             Flexible(
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: items.length,
//                 itemBuilder: (_, index) {
//                   final item = items[index];
//                   final isSelected = item == selected;

//                   return ListTile(
//                     onTap: () {
//                       onSelected(item);
//                       Navigator.pop(context);
//                     },
//                     title: Text(labelBuilder(item)),
//                     trailing: Radio<bool>(
//                       value: true,
//                       groupValue: isSelected,
//                       onChanged: (_) {
//                         onSelected(item);
//                         Navigator.pop(context);
//                       },
//                     ),
//                   );
//                 },
//               ),
//             ),

//             const SizedBox(height: 16),

//             /// Confirm
//             SizedBox(
//               width: double.infinity,
//               height: 48,
//               child: ElevatedButton(
//                 onPressed: () => Navigator.pop(context),
//                 child: const Text('تأكيد'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Future<void> showAddSelectSheet<T>({
//   required BuildContext context,
//   required String title,
//   required List<T> items,
//   required T? selected,
//   required String Function(T) labelBuilder,
//   required ValueChanged<T> onSelected,
// }) {
//   return showModalBottomSheet(
//     context: context,
//     isScrollControlled: true,
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//     ),
//     builder: (_) => AddSelectBottomSheet<T>(
//       title: title,
//       items: items,
//       selected: selected,
//       labelBuilder: labelBuilder,
//       onSelected: onSelected,
//     ),
//   );
// }

class AddSelectBottomSheet<T> extends StatefulWidget {
  const AddSelectBottomSheet({
    super.key,
    required this.title,
    required this.items,
    required this.labelBuilder,
    required this.onConfirm,
    this.initialValue,
  });

  final String title;
  final List<T> items;
  final T? initialValue;
  final String Function(T) labelBuilder;
  final ValueChanged<T> onConfirm;

  @override
  State<AddSelectBottomSheet<T>> createState() =>
      _AddSelectBottomSheetState<T>();
}

class _AddSelectBottomSheetState<T> extends State<AddSelectBottomSheet<T>> {
  T? _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
         final maxHeight = MediaQuery.of(context).size.height * 0.6;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Header
            Row(
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // const SizedBox(width: 48),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            Divider(height: 1, color: AppColors.grayBorder, thickness: 0.3),

            const SizedBox(height: 12),

            /// Options

ConstrainedBox(
  constraints: BoxConstraints(maxHeight: maxHeight),
              child: ListView.builder(
                shrinkWrap: true,

              
                itemCount: widget.items.length,
                itemBuilder: (_, index) {
                  final item = widget.items[index];
                  final selected = item == _selected;
              
                  return ListTile(
                    title: Text(widget.labelBuilder(item)),
                    trailing: AppScaledRadio<T>(
                      value: item,
                      groupValue: _selected,
                      onChanged: (v) => setState(() => _selected = v),
                    ),
                    onTap: () => setState(() => _selected = item),
                  );
                },
              ),
            ),

            16.verticalSpace,

            /// Confirm
            CustomButtonWidget(
              text: 'confirm'.tr(),
              onTap: _selected == null
                    ? null
                    : () {
                        widget.onConfirm(_selected as T);
                        Navigator.pop(context);
                      },
              isFiled: true,
              height: 55,
              width: double.infinity,
              backgroundColor:_selected!=null? AppColors.primary:AppColors.gray,
              radius: 24,
            ),
           
          ],
        ),
      ),
    );
  }
}

Future<void> showAddSelectSheet<T>({
  required BuildContext context,
  required String title,
  required List<T> items,
  required T? selected,
  required String Function(T) labelBuilder,
  required ValueChanged<T> onConfirm,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    // showDragHandle: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (_) => AddSelectBottomSheet<T>(
      title: title.tr(),
      items: items,
      initialValue: selected,
      labelBuilder: labelBuilder,
      onConfirm: onConfirm,
    ),
  );
}
