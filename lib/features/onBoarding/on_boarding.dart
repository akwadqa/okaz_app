import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoarding extends ConsumerWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Container(
      color: Colors.amber,
      width: 222,
      height: 111,
    );
  }
}