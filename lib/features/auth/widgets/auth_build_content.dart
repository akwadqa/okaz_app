import 'package:flutter/material.dart';
import 'auth_background_painter.dart';

// enum AuthPageType { login, signup, verifyOtp }

class AuthScreen extends StatelessWidget {
  final Widget child;

  final bool withBackButton;

  const AuthScreen(
      {super.key, required this.child, this.withBackButton = false});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child:   Stack(
        children: [
          CustomPaint(
                size: MediaQuery.of(context).size,
                painter: AuthBackgroundPainter(),
              ),
              SafeArea(child: child)
        ],
      ),);
  }
}