import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

class FiltersState {
  final String? selectedModel;
  final String? selectedStorage;
  final String? selectedSimType;
  final bool inWarranty;
  final String? selectedNetwork;

  const FiltersState({
    this.selectedModel,
    this.selectedStorage,
    this.selectedSimType,
    this.inWarranty = false,
    this.selectedNetwork,
  });

  FiltersState copyWith({
    String? selectedModel,
    String? selectedStorage,
    String? selectedSimType,
    bool? inWarranty,
    String? selectedNetwork,
  }) {
    return FiltersState(
      selectedModel: selectedModel ?? this.selectedModel,
      selectedStorage: selectedStorage ?? this.selectedStorage,
      selectedSimType: selectedSimType ?? this.selectedSimType,
      inWarranty: inWarranty ?? this.inWarranty,
      selectedNetwork: selectedNetwork ?? this.selectedNetwork,
    );
  }
}

class FiltersController extends StateNotifier<FiltersState> {
  FiltersController() : super(const FiltersState());

  static const List<String> iphoneModels = [
    'iPhone 12',
    'iPhone 12 Pro',
    'iPhone 13',
    'iPhone 14',
    'iPhone 15',
  ];

  static const List<String> storageOptions = [
    '64 GB',
    '128 GB',
    '256 GB',
    '512 GB',
  ];

  static const List<String> simTypes = [
    'شريحة',
    'شريحتين',
    'شريحة و eSim',
  ];

  static const List<String> networkTypes = [
    '4G',
    '5G',
  ];

  void selectModel(String? value) {
    state = state.copyWith(selectedModel: value);
  }

  void selectStorage(String? value) {
    state = state.copyWith(selectedStorage: value);
  }

  void selectSimType(String value) {
    state = state.copyWith(selectedSimType: value);
  }

  void toggleWarranty(bool value) {
    state = state.copyWith(inWarranty: value);
  }

  void selectNetwork(String value) {
    state = state.copyWith(selectedNetwork: value);
  }

  void reset() {
    state = const FiltersState();
  }
}

final filtersControllerProvider =
    StateNotifierProvider<FiltersController, FiltersState>((ref) {
  return FiltersController();
});
