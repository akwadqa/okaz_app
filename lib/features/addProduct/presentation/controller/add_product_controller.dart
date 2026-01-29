import 'package:riverpod_annotation/riverpod_annotation.dart';

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

void nextStep() {
  final current = state.value!;
  if (!canGoNext()) return;
  if (current.step >= 4) return;

  state = AsyncData(
    current.copyWith(step: current.step + 1),
  );
}

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

  void setSubCategory(String value) {
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

  void setCity(String value) {
    state = AsyncData(
      state.value!.copyWith(city: value),
    );
  }

void updateSpec(String key, dynamic value) {
  final current = state.value!;
  final updatedSpecs = Map<String, dynamic>.from(current.specs);

  updatedSpecs[key] = value;

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

  final XFile? image =
      await _picker.pickImage(source: ImageSource.gallery);

  if (image == null) return;

  final updated = List<String>.from(current.images)
    ..add(image.path);

  state = AsyncData(
    current.copyWith(images: updated),
  );
}

/// Remove image
void removeImage(int index) {
  final current = state.value!;
  final updated = List<String>.from(current.images)
    ..removeAt(index);

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

  void setPrice(double? value) {
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
    switch (s.step) {
      case 1:
        return s.category != null;
      case 2:
        return s.adType != null && s.city != null;
      case 3:
        return true; // specs later
      case 4:
        return true;
      default:
        return false;
    }
  }
  bool canGoNextForSpecs(List<ProductSpec> specs) {
  final values = state.value!.specs;

  for (final spec in specs) {
    if (spec.required) {
      final value = values[spec.key];

      if (value == null ||
          (value is String && value.isEmpty)) {
        return false;
      }
    }
  }
  return true;
}


  // ------------------------
  // Reset (optional)
  // ------------------------

  void reset() {
    state = AsyncData(AddProductState.init());
  }
}
