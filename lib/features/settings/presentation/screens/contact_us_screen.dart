import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart' as local;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaz/features/home/presentation/controller/home_controller.dart';
import 'package:okaz/src/core/shared_widgets/app_error_widget.dart';
import 'package:okaz/src/core/shared_widgets/custom_appbar.dart';
import 'package:okaz/src/core/shared_widgets/fade_circle_loading_indicator.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/core/utils/extenssions/widget_extensions.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends ConsumerWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsAsync = ref.watch(homeControllerProvider);

    return Scaffold(
      backgroundColor: const Color(0xffF8F9FD),
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 65),
        child: CustomAppbar(
          title: context.tr('contact_support'),
        ),
      ),
      body: settingsAsync.when(
        data: (data) {
          final phone =
              data.homeModel.requireValue.contactUsModel?.phoneNumber ??
                  "********";

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                16.verticalSpace,

                /// Header Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.primary,
                        AppColors.primary.withOpacity(.85),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.15),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.support_agent_rounded,
                          color: Colors.white,
                          size: 38,
                        ),
                      ),
                      18.verticalSpace,
                      Text(
                        context.tr('contact_support'),
                        style:
                            Theme.of(context).textTheme.titleLarge?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      8.verticalSpace,
                      Text(
                        context.tr(
                            'we_are_here_to_help_you_anytime'),
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: Colors.white.withOpacity(.9),
                                  height: 1.5,
                                ),
                      ),
                    ],
                  ),
                ),

                28.verticalSpace,

                /// Contact Card
                _buildContactCard(
                  context,
                  icon: Icons.phone_rounded,
                  title: context.tr('phone_number'),
                  value: phone,
                  color: Colors.green,
                  onTap: () => _openPhone(phone),
                ),

                // You can enable later
                // 16.verticalSpace,
                // _buildContactCard(
                //   context,
                //   icon: Icons.language_rounded,
                //   title: context.tr('website'),
                //   value: "www.google.com",
                //   color: Colors.blue,
                // ),
              ],
            ),
          );
        },
        error: (error, stackTrace) => AppErrorWidget(),
        loading: () => const Center(
          child: FadeCircleLoadingIndicator(),
        ),
      ),
    );
  }

  Future<void> _openPhone(String phone) async {
    final Uri phoneUri = Uri(
      scheme: 'tel',
      path: phone,
    );

    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    }
  }

  Widget _buildContactCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String value,
    required Color color,
    VoidCallback? onTap,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.05),
              blurRadius: 18,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                color: color.withOpacity(.12),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                icon,
                color: color,
                size: 28,
              ),
            ),
            16.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:
                        Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w500,
                            ),
                  ),
                  6.verticalSpace,
                  Text(
                    value,
                    textDirection: TextDirection.ltr,
                    style:
                        Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                            ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.call_rounded,
              color: color,
            ),
          ],
        ),
      ),
    );
  }
}