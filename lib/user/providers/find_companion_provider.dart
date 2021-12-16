import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/phone.dart';
import '../../utils/refresh_provider_on_user_changes.dart';
import '../repo/companions_repo_provider.dart';
import 'find_companion_state.dart';

final findCompanionStateNotifierProvider = StateNotifierProvider.autoDispose<
    FindCompanionStateNotifier, FindCompanionState>(
  (ref) {
    return FindCompanionStateNotifier(ref);
  },
);

class FindCompanionStateNotifier extends StateNotifier<FindCompanionState> {
  FindCompanionStateNotifier(this.ref)
      : _repo = ref.read(companionsRepoProvider),
        super(const FindCompanionReadyState()) {
    refreshOnUserChanges(ref, findCompanionStateNotifierProvider);
  }

  final Ref ref;
  final CompanionsRepo _repo;

  void findCompanion(PhoneNumber phone) async {
    state = FindCompanionSearchingState(phone);
    final companion = await _repo.findCompanionByPhone(phone);
    if (companion == null) {
      state = const FindCompanionNoSuchUserState();
      return;
    }
    state = FindCompanionFoundState(companion);
  }
}
