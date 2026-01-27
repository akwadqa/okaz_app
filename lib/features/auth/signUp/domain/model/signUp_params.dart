import 'package:dio/dio.dart';

class SignupParams {

  final String fullNamae;

  final String mobileNumber;

  SignupParams(
      {
      required this.fullNamae,

      required this.mobileNumber});

  Map<String, dynamic> toMap() {
    // final totalCostWithSuplies=(discountCost?? totalNetAmount?? totalAmount)+(cleaningSuppliesFees??0);

    return {

      'full_name': fullNamae,
      'mobile_no': mobileNumber,
    };
  }

  FormData toFormData() {
    return FormData.fromMap(toMap());
  }
}
