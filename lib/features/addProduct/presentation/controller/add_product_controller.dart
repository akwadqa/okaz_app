import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:okaz/features/addProduct/data/repositories/add_post_repositories.dart';
import 'package:okaz/features/addProduct/domain/model/subcategory/subcategory_attribute_model.dart';
import 'package:okaz/features/addProduct/presentation/controller/map_controller/map_controller.dart';
import 'package:okaz/features/home/domain/model/home_model/home_model.dart';
import 'package:okaz/src/infrastructure/storage/local_storage_service.dart';
import 'package:okaz/src/logger/log_services/dev_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/model/add_post_params.dart';
import '../../domain/model/category_model.dart';
import 'add_product_state.dart';
import 'package:image_picker/image_picker.dart';

part 'add_product_controller.g.dart';

@riverpod
class AddProductController extends _$AddProductController {
  final _picker = ImagePicker();

  @override
  FutureOr<AddProductState> build() {
    return AddProductState.init();
  }

  // ------------------------
  // Stepper
  // ------------------------
  Future<void> nextStep() async {
    final current = state.value!;

    if (!canGoNext()) return;
    if (current.step >= 4) return;
    if (current.step == 1) {
      state = const AsyncLoading();

      try {
        Dev.logLine(current.subCategory);
        Dev.logLine(current.category);
        final country =
            ref.read(localStorageServiceProvider).userInfo.country ?? '';
        final attributes = await ref
            .read(addPostRepositoriesProvider)
            .getSubCategoryList(
                subCategoryId: current.subCategory!.name!, country: country);

        state = AsyncData(
          current.copyWith(
            step: 2,
            attributes: attributes,
          ),
        );
      } catch (e, st) {
        state = AsyncError(e, st);
      }

      return;
    }

    state = AsyncData(
      current.copyWith(step: current.step + 1),
    );
  }
  // void nextStep() {
  //   final current = state.value!;
  //   if (!canGoNext()) return;
  //   if (current.step >= 4) return;

  //   state = AsyncData(
  //     current.copyWith(step: current.step + 1),
  //   );
  // }

  void previousStep() {
    final current = state.value!;
    if (current.step <= 1) return;

    state = AsyncData(
      current.copyWith(step: current.step - 1),
    );
  }

  void goToStep(int step) {
    if (step < 1 || step > 4) return;
    state = AsyncData(state.value!.copyWith(step: step));
  }

  // ------------------------
  // Step 1 – Category
  // ------------------------

  void setCategory(String value) {
    state = AsyncData(
      state.value!.copyWith(
        category: value,
        subCategory: null,
      ),
    );
  }

  void setSubCategory(SubCategoryModel value) {
    state = AsyncData(
      state.value!.copyWith(subCategory: value),
    );
  }

  // ------------------------
  // Step 2 – Details
  // ------------------------

  void setAdType(String value) {
    state = AsyncData(
      state.value!.copyWith(adType: value),
    );
  }

  void setConditionOfProduct(String value) {
    state = AsyncData(
      state.value!.copyWith(condition: value),
    );
  }

  void setSubCategoryType(String value) {
    state = AsyncData(
      state.value!.copyWith(mainSubCategoryType: value),
    );
  }

  void setCity(String value) {
    state = AsyncData(
      state.value!.copyWith(city: value),
    );
  }

  void setLatLng(LatLng value) {
    state = AsyncData(
      state.value!.copyWith(latLng: value),
    );
  }

  void updateSpec(String key, dynamic value) {
    final current = state.value!;
    final updatedSpecs = Map<String, dynamic>.from(current.specs);

    if (value == null ||
        (value is String && value.trim().isEmpty) ||
        (value is List && value.isEmpty)) {
      updatedSpecs.remove(key);
    } else {
      updatedSpecs[key] = value;
    }
    state = AsyncData(
      current.copyWith(specs: updatedSpecs),
    );
  }

  // --------------------------------------------------
  // Step 4 – Images
  // --------------------------------------------------

  /// Pick image from gallery
  Future<void> pickImage() async {
    final current = state.value!;
    if (current.images.length >= 5) return;

    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image == null) return;

    final updated = List<String>.from(current.images)..add(image.path);

    state = AsyncData(
      current.copyWith(images: updated),
    );
  }

  /// Remove image
  void removeImage(int index) {
    final current = state.value!;
    final updated = List<String>.from(current.images)..removeAt(index);

    state = AsyncData(
      current.copyWith(images: updated),
    );
  }

  void addImage(String path) {
    final current = state.value!;
    final updated = List<String>.from(current.images)..add(path);

    state = AsyncData(
      current.copyWith(images: updated),
    );
  }

  // void removeImage(int index) {
  //   final current = state.value!;
  //   final updated = List<String>.from(current.images)..removeAt(index);

  //   state = AsyncData(
  //     current.copyWith(images: updated),
  //   );
  // }

  // --------------------------------------------------
  // Step 4 – Arabic Details
  // --------------------------------------------------

  void setTitleAr(String value) {
    state = AsyncData(
      state.value!.copyWith(titleAr: value),
    );
  }

  void setDescAr(String value) {
    state = AsyncData(
      state.value!.copyWith(descAr: value),
    );
  }

  // --------------------------------------------------
  // Step 4 – English Details
  // --------------------------------------------------

  void setTitleEn(String value) {
    state = AsyncData(
      state.value!.copyWith(titleEn: value),
    );
  }

  void setDescEn(String value) {
    state = AsyncData(
      state.value!.copyWith(descEn: value),
    );
  }

  // --------------------------------------------------
  // Step 4 – Price & Featured
  // --------------------------------------------------

  void setPrice(int? value) {
    state = AsyncData(
      state.value!.copyWith(price: value),
    );
  }

  void setFeatured(bool value) {
    state = AsyncData(
      state.value!.copyWith(isFeatured: value),
    );
  }

  // ------------------------
  // Validation helpers
  // ------------------------

  bool canGoNext() {
    final s = state.value!;
    final mapCtrl = ref.read(mapControllerProvider).value?.latLng;
    switch (s.step) {
      case 1:
        return s.subCategory != null;
      case 2:
        return s.adType != null && s.condition != null && s.city != null;
      // && mapCtrl != null;
      case 3:
        return true; // specs later
      case 4:
        return s.images.isNotEmpty &&
            s.titleAr != null &&
            s.titleEn != null &&
            s.descAr != null &&
            s.descEn != null &&
            s.price != null;
      // return true;
      default:
        return false;
    }
  }
// bool canGoNextForSpecs(List<SubcategoryAttributeModel> specs) {
//   final values = state.value!.specs;

//   for (final spec in specs) {
//     // validate only required attributes
//     if (spec.isMainFilter == 1) {
//       final value = values[spec.title];

//       if (value == null) {
//         return false;
//       }

//       if (value is String && value.trim().isEmpty) {
//         return false;
//       }

//       if (value is List && value.isEmpty) {
//         return false;
//       }
//     }
//   }

//   return true;
// }
  bool canGoNextForSpecs(List<SubcategoryAttributeModel> specs) {
    final values = state.value!.specs;
    Dev.logMap(values);

    for (final spec in specs) {
      // if (spec.required) {
      final value = values[spec.title];

      if (value == null) {
        return false;
      }

      if (value is String && value.trim().isEmpty) {
        return false;
      }

      if (value is List && value.isEmpty) {
        return false;
      }
      // }
    }
    return true;
  }

  // ------------------------
  // Reset (optional)
  // ------------------------

  void reset() {
    state = AsyncData(AddProductState.init());
  }

  Future<void> submitPost() async {
    final current = state.value!;
    final mapCtrl = ref.read(mapControllerProvider).value?.latLng;
    Dev.logLine(mapCtrl?.latitude);
    Dev.logLine(current.latLng?.latitude);
    Dev.logLine("mapCtrl?");
    Dev.logLine(mapCtrl?.longitude);
    Dev.logLine(current.latLng?.longitude);
    Dev.logMap(current.specs);
    if (!canGoNext()) return;

    state = const AsyncLoading();

    try {
      // 🔹 Convert specs map to attributes list
      final attributesList = current.specs.entries.map((e) {
        return {
          "title": e.key,
          "value": e.value.toString(),
        };
      }).toList();

      final attributesJson = jsonEncode(attributesList);

      // 🔹 Convert image paths to File
      final imageFiles = current.images.map((path) => File(path)).toList();

      // 🔹 Build params
      final params = AddPostParams(
        title: current.titleEn!,
        titleAr: current.titleAr!,
        description: current.descEn!,
        descriptionAr: current.descAr!,
        subcategory: current.subCategory?.categoryName ?? "",
        postType: current.adType!,
        city: current.city!,
        price: current.price!.toString(),
        attributes: attributesJson,
        images: imageFiles,
        condition: current.condition!,
        isFeatured: current.isFeatured ? 1 : 0,
        latLng: current.latLng ?? LatLng(0, 0),
      );
      log("===== ADD POST DEBUG =====");

      log("Title: ${current.titleEn}");
      log("TitleAr: ${current.titleAr}");
      log("Description: ${current.descEn}");
      log("Subcategory: ${current.subCategory}");
      log("Post Type: ${current.adType}");
      log("City: ${current.city}");
      log("Price: ${current.price}");
      log("Status: Live");
      log("Condition: New");

      log("Specs: ${current.specs}");

      log("Attributes JSON: $attributesJson");

      log("Images:");
      for (final path in current.images) {
        log(" - $path");
      }

      log("===== END DEBUG =====");
      // 🔹 Call datasource
      final result =
          await ref.read(addPostRepositoriesProvider).createPost(params);
      // if (result.hasSucceeded) {
      state = AsyncData(current); // success
      // } else {
      //   throw AsyncError(
      //       result.message ?? "Something went wrong", StackTrace.current);
      // }
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
