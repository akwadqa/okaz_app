import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:pinput/pinput.dart';

import 'create_account_field.dart';

class CreateAccountDate extends StatefulWidget {
  const CreateAccountDate({
    super.key,
    required this.date,
    required this.controller,
    required this.onSelectDate,
  });
  final DateTime? date;
  final void Function(DateTime date) onSelectDate;
  // final String date;
  final TextEditingController controller;

  @override
  State<CreateAccountDate> createState() => _CreateAccountDateState();
}

class _CreateAccountDateState extends State<CreateAccountDate> {
@override
  void didUpdateWidget(covariant CreateAccountDate oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.date != null && widget.date != oldWidget.date) {
      // ✅ SAFE: after build
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final locale = Localizations.localeOf(context).toString();
        widget.controller.text = DateFormat(
          'yyyy-MM-dd',
          locale,
        ).format(widget.date!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // return Consumer(
    // //   builder: (context, ref, child) {
    // final deviceLocale = Localizations.localeOf(context).toString();
    // final dataFormatter = widget.date != null
    //     ? DateFormat(
    //         ' dd-MM-yyyy',
    //         deviceLocale,
    //       ).format(DateTime.parse(widget.date!))
    //     : '';
    //     // widget.controller.setText(dataFormatter);
    //     widget.controller.text=(dataFormatter);
    return AppTextFormField(
      // controller: controller,
      // controller: _date,
      // value: ,
      // controller: controller,
      controller:widget.controller,
      // value: dataFormatter,
      validator: (val) {
        if (val == null || val.isEmpty) {
          return context.tr('required');
        }
        return null;
      },
      hint: context.tr('selectDate'),
      isRequired: false,
      withIcon: false,
      label: context.tr('birth_data'),
      // icon: Assets.icons.selectedDateIc,
      isReadOnly: true,
      onTap: () async {
        final date = await showDatePicker(
          builder: (context, child) => Theme(
            data: Theme.of(context).copyWith(
              datePickerTheme: DatePickerThemeData(
                dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.selected)) {
                    return AppColors.primary;
                  }
                  return null; // الافتراضي
                }),
                //   selectionColor: Colors.red,
                //   selectedDayForegroundColor: Colors.white,
              ),
            ),
            child: child!,
          ),
          context: context,
          lastDate: DateTime.now(),
          firstDate: DateTime(1900),
        );

        if (date != null) {
          widget.onSelectDate(date);
        }
      },
    );
    //   },
    // );
  }
}
