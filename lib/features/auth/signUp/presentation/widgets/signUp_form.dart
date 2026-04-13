import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:okaz/features/auth/signUp/presentation/controller/signUp_controller.dart';
import 'package:okaz/features/auth/widgets/text_form_fields/login_page_number_field.dart';
import 'package:okaz/src/application/router/app_routes.dart';
import 'package:okaz/src/core/shared_widgets/app_dialogs.dart';
import 'package:okaz/src/core/shared_widgets/app_loader.dart';
import 'package:okaz/src/core/shared_widgets/custom_button_widget.dart';
import 'package:okaz/src/core/utils/extenssions/int_extenssion.dart';
import 'package:okaz/src/resourses/color_manager/app_colors.dart';
import 'package:okaz/src/resourses/font_manager/app_text_style.dart';
import 'package:pinput/pinput.dart';
import '../../domain/model/signUp_params.dart';
import 'create_account_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  // String? _phoneNumber;
  String? selectedDate;

  final _formKey = GlobalKey<FormState>();
  // final TextEditingController phoneController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;
    return Form(
      key: _formKey,
      child: Column(
        spacing: 24,
        children: [
          1.verticalSpace,
          AppTextFormField(
            hint: 'first_name'.tr(),
            // hint: 'mohamad',
            label: 'first_name'.tr(),
            controller: firstNameController,
            isRequired: true,
            withIcon: false,
          ),
          1.verticalSpace,
          AppTextFormField(
            hint: 'last_name'.tr(),
            // hint: 'kilani',
            label: 'last_name'.tr(),
            controller: lastNameController,
            isRequired: true,
            withIcon: false,
          ),

          // Consumer(
          //   builder: (context, ref, _) {
          //     final controller = ref.read(signUpControllerProvider.notifier);
          //     final date = controller.selectedDate;
          //     Dev.logLine(date);
          //     return CreateAccountDate(
          //       controller: eventDateController,
          //       date: date,
          //       onSelectDate: (picked) {
          //         ref
          //             .read(signUpControllerProvider.notifier)
          //             .setBirthDate(picked);
          //         setState(() {});
          //       },
          //     );
          //   },
          // ),
          // LoginPageNumberField(
          //   phoneController,
          //   onChange: (phone) {
          //     phoneController.setText(phone?.number ?? "");
          //     setState(() {});
          //   },
          // ),
          
          Row(
            spacing: 10,
            children: [
              Consumer(builder: (context, ref, wiidget) {
                final provider = ref.read(signUpControllerProvider.notifier);
                return Checkbox.adaptive(
                    activeColor: Colors.white,
                    checkColor: AppColors.primary,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: provider.acceptPrivacyPolicy,
                    onChanged: (v) {
                      provider.toggleAcceptedPrivacyPolicy();
                      setState(() {});
                    });
              }),
              Text(
                'agree_terms'.tr(),
                textAlign: TextAlign.start,
                style: AppTextStyle.rubikMedium14,
                // style: textTheme.displaySmall!.copyWith(
                //   color: AppColors.black,
                //   fontWeight: FontWeight.w800,
                // ),
              ),
            ],
          ),

          Consumer(builder: (context, ref, child) {
            ref.listen(signUpControllerProvider, (prev, next) {
              if (next is AsyncData) {
                // context.maybePop().then((_) {
                debugPrint("Success check");
                context.push(AppRoutes.verificationScreen,
                    extra: widget.phoneNumber);
                // context
                //     .pushRoute(VerificationRoute(inputedPhone: _phoneNumber!));
                // _showDialog();
                // });
              } else if (next is AsyncError) {
                showErrorDialog(context, next.error.toString());
              }
            });

            final signUpState = ref.watch(signUpControllerProvider);
            final signUpProvider = ref.read(signUpControllerProvider.notifier);
            if (signUpState is AsyncLoading) {
              return AppLoader();
              // const FadeCircleLoadingIndicator();
            }
            final active = signUpProvider.acceptPrivacyPolicy
                // &&
                // phoneController.text.isNotEmpty
                ;
            // signUpProvider.isLoading
            //     ?

            // :
            return CustomButtonWidget(
              text: 'create_account'.tr(),
              onTap: () => active ? _submit(ref) : null,
              isFiled: true,
              height: 55,
              width: double.infinity,
              backgroundColor: active ? AppColors.primary : AppColors.gray,
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

    // if (_formKey.currentState?.validate() ?? false) {
    _formKey.currentState?.save();
    await ref.read(signUpControllerProvider.notifier).signUp(
          SignupParams(
            firstName: firstNameController.text,
            lastName: lastNameController.text,
            mobileNumber: widget.phoneNumber,
          ),
        ); // }
  }
}
