import 'package:dio/dio.dart';

class SignupParams {

  final String firstName;
  final String? lastName;

  final String mobileNumber;

  SignupParams(
      {
      required this.firstName,
      required this.lastName,

      required this.mobileNumber});

  Map<String, dynamic> toMap() {
    // final totalCostWithSuplies=(discountCost?? totalNetAmount?? totalAmount)+(cleaningSuppliesFees??0);

    return {

      'first_name': firstName,
      'last_name': lastName,
      'mobile_no': mobileNumber,
    };
  }

  FormData toFormData() {
    return FormData.fromMap(toMap());
  }
}
