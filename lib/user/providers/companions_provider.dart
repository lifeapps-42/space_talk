import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'companions_state.dart';

final companionsStateNotifierProvider =
    StateNotifierProvider<CompanionsStateNotifier, CompanionsState>(
        (ref) => CompanionsStateNotifier());

class CompanionsStateNotifier extends StateNotifier<CompanionsState> {
  CompanionsStateNotifier() : super(const CompanionsInitializingState()) {
    _init();
  }

  void _init() {
    
  }
}
