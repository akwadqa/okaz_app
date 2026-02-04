import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/auth/signIn/presentation/screens/sign_in_screen.dart';
import 'package:okaz/features/auth/signUp/presentation/screens/signup_screen.dart';
import 'package:okaz/features/auth/verification/presentation/screens/verification_account_screen.dart';
import 'package:okaz/features/filter/presentation/screens/filters_screen.dart';
import 'package:okaz/features/filter/presentation/screens/products_screen.dart';
import 'package:okaz/features/filter/presentation/screens/search_sub_categories_screen.dart';
import 'package:okaz/features/home/presentation/screens/home_screen.dart';
import 'package:okaz/features/home/presentation/screens/main_screen.dart';
import 'package:okaz/features/onBoarding/presentation/screens/on_boarding_screen.dart';
import 'package:okaz/features/product/presentation/screens/product_details_screen.dart';

import 'app_routes.dart';
import 'custom_navigation_observer.dart';
import 'fallback_screen.dart';

final GlobalKey<NavigatorState> rootKey = GlobalKey<NavigatorState>();

class AppRouter {
  final GoRouter goRouter;

  AppRouter(Ref ref) : goRouter = _createRouter(ref);

  static GoRouter _createRouter(Ref ref) {
    String initialRoute = AppRoutes.onBoarding;
    return GoRouter(
      navigatorKey: rootKey,
      initialLocation: initialRoute,

      observers: [CustomNavigationObserver()],
      errorBuilder: (context, state) => const FallbackScreen(),

      //   redirect: (context, state) async {
      //     // Consumer(
      //     //   builder: (context, ref, child) {
      //     //     // return ;
      //     //   },
      //     // );
      //   //  final storage = ref.read(localStorageServiceProvider);
      //   //   final isFirstTime = await storage.isFirstTimeOpen();
      //   //   final isAuth = await ref.read(isAuthenticatedProvider.future);
      //   //   final currentLocation = state.matchedLocation;

      //   //   Dev.logLine('Current location: $currentLocation');
      //   //   Dev.logLine('isFirstTime: $isFirstTime, isAuth: $isAuth');

      //   //   // ===== First-time onboarding =====
      //   //   if (isFirstTime ) {
      //   //     Dev.logLine(AppRoutes.onBoarding);
      //   //     return AppRoutes.onBoarding;
      //   //   }

      //   //   // ===== Not authenticated =====
      //   //   if (!isAuth ) {
      //   //     Dev.logLine(AppRoutes.signInScreen);

      //   //     return AppRoutes.signInScreen;
      //   //   }

      //   //   // ===== Authenticated users trying to access non-home pages =====
      //   //   // if (isAuth) {
      //   //     return AppRoutes.homeScreen;
      //     // }

      //     // No redirection needed
      //     // return null;
      // },
      routes: <RouteBase>[
        // GoRoute(
        //   path: AppRoutes.splashScreen,
        //   parentNavigatorKey: rootKey,
        //   pageBuilder: (BuildContext context, GoRouterState state) {
        //     return CustomTransitionPage(
        //       child: SplashScreen(),
        //       key: state.pageKey,
        //       transitionsBuilder:
        //           (context, animation, secondaryAnimation, child) {
        //         return FadeTransition(opacity: animation, child: child);
        //       },
        //     );
        //   },
        // ),
        GoRoute(
          path: AppRoutes.onBoarding,
          name: AppRoutes.onBoarding,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: OnBoardingScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return FadeTransition(opacity: animation, child: child);
                  },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.signInScreen,
          name: AppRoutes.signInScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: SignInScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return FadeTransition(opacity: animation, child: child);
                  },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.signUpScreen,
          name: AppRoutes.signUpScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: SignupScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return FadeTransition(opacity: animation, child: child);
                  },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.verificationScreen,
          name: AppRoutes.verificationScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: VerificationAccountScreen(phone: state.extra as String),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return FadeTransition(opacity: animation, child: child);
                  },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.homeScreen,
          name: AppRoutes.homeScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: HomeScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return FadeTransition(opacity: animation, child: child);
                  },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.mainScreen,
          name: AppRoutes.mainScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: HomeScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return FadeTransition(opacity: animation, child: child);
                  },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.searchSubCategoryScreen,
          name: AppRoutes.searchSubCategoryScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: SearchSubCategoriesScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return FadeTransition(opacity: animation, child: child);
                  },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.productsScreen,
          name: AppRoutes.productsScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: ProductsScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return FadeTransition(opacity: animation, child: child);
                  },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.filtersScreen,
          name: AppRoutes.filtersScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: FiltersScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return FadeTransition(opacity: animation, child: child);
                  },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.productDetailsScreen,
          name: AppRoutes.productDetailsScreen,
          parentNavigatorKey: rootKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage(
              child: ProductDetailsScreen(),
              key: state.pageKey,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return FadeTransition(opacity: animation, child: child);
                  },
            );
          },
        ),
      ],
    );
  }
}
