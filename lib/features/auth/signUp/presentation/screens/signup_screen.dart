import 'package:flutter/material.dart';
import 'package:okaz/features/auth/signUp/presentation/widgets/signUp_form.dart';
import 'package:okaz/features/auth/signUp/presentation/widgets/signUp_header.dart';
import 'package:okaz/features/auth/widgets/auth_build_content.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import '../widgets/signUp_footer.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthScreen(child: _SignupContent()),
    );
  }
}

class _SignupContent extends StatelessWidget {
  const _SignupContent();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 20,
        children: [

          SignupHeader(),
          SignUpForm(),
          SignUpFooter(),
        ],
      ).symmetricPadding(vertical: 20),
    );
  }
}