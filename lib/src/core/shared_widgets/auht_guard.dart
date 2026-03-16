import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/src/core/shared_widgets/app_loader.dart';
import 'package:okaz/src/infrastructure/storage/local_storage_service.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';

import 'guest_required_widget.dart';

class AuthGuard extends ConsumerWidget {
  final Widget child;

  const AuthGuard({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authAsync = ref.watch(isAuthenticatedProvider);

    return authAsync.when(
      data: (isLoggedIn) {
        Dev.logLine('isLoggedIn: $isLoggedIn');

        if (!isLoggedIn) {
          return const GuestRequiredWidget();
        }

        return child;
      },
      loading: () => const Center(
        child: AppLoader(),
      ),
      error: (e, _) => Center(
        child: Text('something_went_wrong'.tr()),
      ),
    );
  }
}
