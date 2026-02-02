import 'package:flutter/material.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

class AuthBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..isAntiAlias = true;

    /// 🟠 Top filled half circle
    paint
      ..color = AppColors.primaryOpacity.withOpacity(0.2)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      Offset(size.width * 1.2, -size.height * 0.04),
      size.width * 0.8,
      paint,
    );

    /// 🟠 Top stroke circle
    paint
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..color = AppColors.primaryOpacity.withOpacity(0.8);

    canvas.drawCircle(
      Offset(size.width * 0.8, -size.height * 0.18),
      size.width * 0.9,
      paint,
    );


    /// ◻️ Bottom square 1
    paint
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..color = AppColors.primaryOpacity.withOpacity(0.8);

    canvas.drawRect(
      Rect.fromLTWH(
        size.width * -0.2,
        size.height * 0.8,
        200,
        200,
      ),
      paint,
    );

    /// ◻️ Bottom square 2 (rotated)
    canvas.save();
    canvas.translate(size.width * -0.29, size.height * 1.0);
    canvas.rotate(-1);

    canvas.drawRect(
      Rect.fromLTWH(0, 0, 200, 250),
      paint,
    );

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
