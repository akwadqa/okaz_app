import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/auth/signIn/presentation/controller/sign_in_controller.dart';
import 'package:okaz/features/auth/widgets/text_form_fields/login_page_number_field.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/shared_widgets/app_dialogs.dart';
import 'package:okaz/src/core/shared_widgets/app_loader.dart';
import 'package:okaz/src/core/shared_widgets/custom_button_widget.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';

class SignInForm extends ConsumerStatefulWidget {
  const SignInForm({super.key});

  @override
  ConsumerState<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends ConsumerState<SignInForm> {
  // String? _phoneNumber;
  final _formKey = GlobalKey<FormState>();
  late TextEditingController phoneController;

  @override
  void initState() {
    super.initState();
    phoneController = TextEditingController();
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(signInControllerProvider, (prev, next) {
      if (next is AsyncData && prev is AsyncLoading) {
        // context.maybePop().then((_) {
        debugPrint("Success check");
        if (next.value!.signinResponseModel!.userExist) {
          context.push(AppRoutes.verificationScreen,
              extra: phoneController.text);
        } else {
          context.go(AppRoutes.signUpScreen);
        }
        // _showDialog();
        // });
      } else if (next is AsyncError) {
        showErrorDialog(context, next.error.toString());
      }
    });

    // final phoneNotifier =
    //     ref.watch(signInControllerProvider.notifier).phoneController;
    return Form(
      key: _formKey,
      child: Column(
        spacing: 33,
        children: [
          LoginPageNumberField(
            phoneController,
            onChange: (phone) {
              ref
                  .read(signInControllerProvider.notifier)
                  .checkPhoneFilled(phone!.number.isNotEmpty);
              // ref
              //     .read(signInControllerProvider.notifier)
              //     .changePhoneNumber(phone?.number ?? "");
              setState(() {});
            },
          ),
          Consumer(builder: (context, ref, child) {
            final signInProvider = ref.watch(signInControllerProvider);

            if (signInProvider is AsyncLoading) {
              return AppLoader();
            }

            final isEmpty =
                ref.watch(signInControllerProvider).value!.isPhoneFilled ??
                    false;
            return CustomButtonWidget(
              text: 'login'.tr(),
              onTap: () => !isEmpty ? null : _submit(ref),
              isFiled: true,
              height: 55,
              width: double.infinity,
              backgroundColor: !isEmpty ? AppColors.gray : AppColors.primary,
              radius: 24,
            );
            // return Container();
          }),
        ],
      ),
    );
  }

  Future<void> _submit(WidgetRef ref) async {
    final isValid = _formKey.currentState!.validate();
    debugPrint('FORM VALID: $isValid');
    if (!isValid) return;

    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      await ref
          .read(signInControllerProvider.notifier)
          .signIn(phoneController.text)
          .then((_) {
        ref.read(signInControllerProvider.notifier)
          ..makeResendButtonVisible(false)
          ..makeConfirmButtonVisible(true);
      });
    }
  }
}
