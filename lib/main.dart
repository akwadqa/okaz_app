import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:okaz/src/application/di/app_initilaizer.dart';

import 'features/app/myApp.dart';

Future<void> main() async {
  await AppInitializer.init();

  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  final container = await initializeProviders();
  await handleSplashScreen(container); 

  runApp(
    DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) {
          return UncontrolledProviderScope( 
            container: container,
            child: EasyLocalization(
              supportedLocales: const [Locale('en'), Locale('ar')],
              path: 'assets/translations',
              child: const MyApp(),
            ),
          );

        }),
  );
}

// Future<ProviderContainer> initializeProviders() async {
//   final container = ProviderContainer(observers: [RiverpodObserver()]);
//   await container.read(sharedPreferencesProvider.future);
//   return container;
// }

// Future<void> handleSplashScreen(ProviderContainer container) async {
//   const minSplashDuration = 2000;
//   final startTime = DateTime.now();
//   // await container.read(homeProvider.future);
//   final loadDuration = DateTime.now().difference(startTime).inMilliseconds;

//   if (loadDuration < minSplashDuration) {
//     await Future.delayed(
//         Duration(milliseconds: minSplashDuration - loadDuration));
//   }

//   FlutterNativeSplash.remove();
// }
