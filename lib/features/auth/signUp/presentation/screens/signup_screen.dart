import 'package:flutter/material.dart';
import 'package:okaz/features/auth/signUp/presentation/widgets/signUp_form.dart';
import 'package:okaz/features/auth/signUp/presentation/widgets/signUp_header.dart';
import 'package:okaz/features/auth/widgets/auth_build_content.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import '../widgets/signUp_footer.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: false,

      body: AuthScreen(child: _SignupContent(phoneNumber: phoneNumber,)),
    );
  }
}

class _SignupContent extends StatelessWidget {
  const _SignupContent({required this.phoneNumber});
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        spacing: 35,
        children: [

          SignupHeader(),
          SignUpForm(phoneNumber:phoneNumber,),
          SignUpFooter(),
        ],
      ).symmetricPadding(vertical: 20,horizontal: 20),
    ).onlyPadding(bottom: MediaQuery.of(context).viewInsets.bottom);
  }
}