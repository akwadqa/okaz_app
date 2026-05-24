import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';
import '../../../logger/log_services/dev_logger.dart';
import 'package:queen_validators/queen_validators.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

String? Function(String?) mobileNumberValidation(BuildContext context) {
  return qValidator([
    IsRequired(context.tr('required')),
    MaxLength(8, context.tr('mustBeEightDigits')),
    MinLength(8, context.tr('mustBeEightDigits')),
    RegExpRule(
      RegExp(r'^([3567])\d+'),
      context.tr('qatariPhoneNumberValidator'),
    ),
  ]);
}
FutureOr<String?> Function(PhoneNumber?) mobileNumberValidationIntl(
  BuildContext context,
) {
  return (PhoneNumber? value) {
    Dev.logLine(value);
    final number = value?.number ?? '';

    if (number.isEmpty||value ==null) {
      return context.tr('required');
    }

    if (number.length != 8) {
      return context.tr('mustBeEightDigits');
    }

    if (!RegExp(r'^[3567]\d{7}$').hasMatch(number)) {
      return context.tr('qatariPhoneNumberValidator');
    }

    return null;
  };

  
}

String? Function(String?) nameValidation(BuildContext context) {
  return qValidator([
    IsRequired(context.tr('required')),
  ]);
}

