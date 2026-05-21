import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../auth/signUp/presentation/widgets/create_account_field.dart';
import '../../domain/model/update_user_request/update_user_request.dart';
import '../../domain/model/user_response_model/user_response_model.dart';
import '../controller/my_profile_controller.dart';
import '../../../../src/core/shared_widgets/app_dialogs.dart';
import '../../../../src/core/shared_widgets/app_error_widget.dart';
import '../../../../src/core/shared_widgets/app_loader.dart';
import '../../../../src/core/shared_widgets/custom_app_bar.dart';
import '../../../../src/core/shared_widgets/custom_button_widget.dart';
import '../../../../src/core/utils/extenssions/int_extenssion.dart';
import '../../../../src/infrastructure/api/endpoint/services_urls.dart';
import '../../../../src/resourses/color_manager/app_colors.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomDeafultAppbar(title: 'edit'.tr()),
      body: _EditProfileScreenContent(),
    );
  }
}

class _EditProfileScreenContent extends ConsumerStatefulWidget {
  const _EditProfileScreenContent();

  @override
  ConsumerState<_EditProfileScreenContent> createState() =>
      _EditProfileScreenContentState();
}

class _EditProfileScreenContentState
    extends ConsumerState<_EditProfileScreenContent> {
  late TextEditingController firstNameController, lastNameController;
  @override
  void initState() {
    super.initState();
    Future(() {
      ref.read(profileControllerProvider.notifier).getProfileData();
    });
  }

  @override
  void dispose() {
    lastNameController.dispose();
    firstNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller =
        ref.watch(profileControllerProvider).value!.profileData ??
            AsyncLoading();
    return controller.when(
        data: (data) {
          firstNameController = TextEditingController(text: data.firstName);
          lastNameController = TextEditingController(text: data.lastName);
          return _buildBody(data, ref);
        },
        error: (e, st) => AppErrorWidget(),
        loading: () => AppLoader());
  }

  Widget _buildBody(UserResponseModel user, WidgetRef ref) {
    final key = GlobalKey<FormState>();

    final controller = ref.watch(profileControllerProvider.select((val) =>
        val.value!.updateprofileData ?? AsyncData(UserResponseModel())));

    final imageFile = ref.watch(
        profileControllerProvider.select((val) => val.value!.profileImage));

    ref.listen(
        profileControllerProvider.select((val) => val.value!.updateprofileData),
        (prev, next) {
      if (next is AsyncData) {
        context.pop();
      }
      if (next is AsyncError) {
        showErrorDialog(context, next?.error.toString() ?? '');
      }
    });

    return Form(
      key: key,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 22),
        children: [
          GestureDetector(
            onTap: () =>
                ref.read(profileControllerProvider.notifier).pickImage(),
            child: CircleAvatar(
                radius: 45,
                backgroundColor: AppColors.graduationBg,
                child: _buildImageSection(user.image, imageFile)),
          ),
          24.verticalSpace,
          AppTextFormField(
            // hint: 'firstName'.tr(),
            hint: 'first_name'.tr(),
            label: 'first_name'.tr(),
            controller: firstNameController,

            isRequired: true,
            withIcon: false,
          ),
          24.verticalSpace,
          AppTextFormField(
            // hint: 'firstName'.tr(),
            hint: 'last_name'.tr(),
            label: 'last_name'.tr(),
            controller: lastNameController,
            isRequired: true,
            withIcon: false,
          ),
          24.verticalSpace,
          controller.maybeWhen(
              loading: () => AppLoader(),
              orElse: () => CustomButtonWidget(
                  text: 'update'.tr(),
                  elevation: 2,
                  shadowColor: AppColors.primary,
                  onTap: () {
                    if (key.currentState!.validate()) {
                      final user = UpdateUserRequest(
                        firstName: firstNameController.text,
                        lastName: lastNameController.text,
                        filePath: imageFile,
                      );
                      ref
                          .read(profileControllerProvider.notifier)
                          .updateProfileData(user);
                    }
                    // ref.read(updatePostControllerProvider.notifier).updatePost();
                  },
                  isFiled: true,
                  backgroundColor: AppColors.primary,
                  height: 53,
                  width: double.infinity))
        ],
      ),
    );
  }

  Widget _buildImageSection(String? imageUrl, File? image) {
    if (image != null) {
      return ClipOval(
        child: Image.file(
          image,
          width: 90,
          height: 90,
          fit: BoxFit.cover,
        ),
      );
    }
    if (imageUrl != null && imageUrl.isNotEmpty) {
      return ClipOval(
        child: Material(
          child: CachedNetworkImage(
            imageUrl: ServicesUrls.imageUrl + imageUrl,
            width: 90,
            height: 90,
            fit: BoxFit.cover,
          ),
        ),
      );
    }
    return Icon(
      Icons.person,
      size: 49,
    );
  }
}
