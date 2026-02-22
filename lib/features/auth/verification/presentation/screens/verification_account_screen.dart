import 'package:flutter/material.dart';
import 'package:okaz/features/auth/verification/presentation/widgets/verification_screen_confirmation_buttons.dart';
import 'package:okaz/features/auth/verification/presentation/widgets/verification_screen_heading.dart';
import 'package:okaz/features/auth/verification/presentation/widgets/verification_screen_pin.dart';
import 'package:okaz/features/auth/verification/presentation/widgets/verification_screen_timer.dart';
import 'package:okaz/features/auth/widgets/auth_build_content.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:pinput/pinput.dart';

import '../widgets/verification_screen_footer.dart';

class VerificationAccountScreen extends StatelessWidget {
  final String phone;
  const VerificationAccountScreen({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: false,
        body: AuthScreen(
      withBackButton: true,
      child: _VerificationScreenContent(
        phone: phone,
      ),
    ));
  }
}

class _VerificationScreenContent extends StatefulWidget {
  final String phone;
  const _VerificationScreenContent({required this.phone});
  @override
  State<_VerificationScreenContent> createState() =>
      _VerificationScreenContentState();
}

class _VerificationScreenContentState
    extends State<_VerificationScreenContent> {
  late TextEditingController controller;
  final key = GlobalKey<FormState>();
  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 28,
        children: [
          VerificationScreenHeading(phone: widget.phone),
          VerificationScreenPin(
            controller: controller,
            // onSaved: (v) {
            //   controller.setText(v ?? "99");
            //   setState(() {});
            // },
          ),
          VerificationScreenTimer(
            phone: widget.phone,

          ),
          VerificationScreenConfirmationButtons(
            phone: widget.phone,
            otp: controller,
            formKey: key,
          ),
          VerificationScreenFooter(),
        ],
      ),
    );
  }
}
