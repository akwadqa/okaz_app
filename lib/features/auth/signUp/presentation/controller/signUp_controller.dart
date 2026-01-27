import 'package:okaz/features/auth/signUp/data/repositories/signUp_repository.dart';
import 'package:okaz/features/auth/signUp/domain/model/signUp_params.dart';
import 'package:okaz/features/auth/signUp/domain/model/signup_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signUp_controller.g.dart';

@riverpod
class SignUpController extends _$SignUpController {
  @override
  Future<SignupResponseModel?>? build() => null;
  DateTime? selectedDate;

  void setBirthDate(DateTime date) {
    selectedDate = date;
    // 🔥 force rebuild safely
    ref.invalidateSelf();
    // state = const AsyncData(null);
  }

  Future<void> signUp(SignupParams params) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(signupRepositoryProvider);
      final response = await repo.signUp(params);
      return response.data;
    });
  }
}
