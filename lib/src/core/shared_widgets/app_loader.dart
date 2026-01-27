import 'package:flutter/cupertino.dart';
import 'package:okaz/gen/assets.gen.dart';
import 'package:lottie/lottie.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Lottie.asset(
      width: 55,
      height: 55,
      Assets.lottie.shoppingLoader,
      // Assets.lottie.processingCircle,
      repeat: true,
      
      // fit: BoxFit.cover,
      // frameRate: FrameRate.max,
    ));
  }
}
