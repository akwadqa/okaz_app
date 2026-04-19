import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({

    // Async actions
    @Default(AsyncData(null))
    AsyncValue<dynamic> deleteAccountState,

    @Default(AsyncData(null))
    AsyncValue<dynamic> logoutState,
  }) = _SettingsState;
}
