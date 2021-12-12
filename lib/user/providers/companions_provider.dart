import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../chats/models/private_chat.dart';
import '../../chats/providers/chats_provider.dart';
import '../../chats/providers/chats_state.dart';
import '../models/user.dart';
import '../repo/companions_repo_provider.dart';
import 'companions_state.dart';

final companionsStateNotifierProvider =
    StateNotifierProvider<CompanionsStateNotifier, CompanionsState>(
        (ref) => CompanionsStateNotifier(ref));

class CompanionsStateNotifier extends StateNotifier<CompanionsState> {
  CompanionsStateNotifier(this.ref)
      : _repo = ref.read(companionsRepoProvider),
        super(const CompanionsInitializingState()) {
    _init();
  }

  final Ref ref;
  final CompanionsRepo _repo;

  void _init() {
    ref.listen<ChatsState>(chatsStateNotifierProvider, (previous, next) {
      next.when(
        initializing: () => state = const CompanionsInitializingState(),
        noChats: () => state = const CompanionsSubscribedState([], null),
        subscribed: (chats) => _fetchAndSubscribe(chats),
      );
    });
  }

  void _fetchAndSubscribe(List<Chat> newChats) async {
    final companionsIds = _getUserIdsFromChats(newChats);
    final companions = await _repo.fetchUsersById(companionsIds);
    final subscription = _subscribe(companionsIds);
    state = CompanionsSubscribedState(companions, subscription);
  }

  StreamSubscription<List<User>> _subscribe(List<String> companionsIds) {
    late StreamSubscription<List<User>> subscription;
    final stream = _repo.subscribeToCompanions(companionsIds);
    subscription = stream.listen((companions) {
      state.maybeWhen(
        subscribed: (_, oldSubscription) => oldSubscription?.cancel(),
        orElse: () {},
      );
      state = CompanionsSubscribedState(companions, subscription);
    });
    return subscription;
  }

  List<String> _getUserIdsFromChats(List<Chat> newChats) {
    final newCompanions = <String>[];
    for (final chat in newChats) {
      for (final companionId in chat.users) {
        if (!newCompanions.contains(companionId)) {
          newCompanions.add(companionId);
        }
      }
    }
    return newCompanions;
  }
}
