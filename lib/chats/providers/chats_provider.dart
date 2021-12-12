import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../user/models/user.dart';
import '../../user/providers/user_provider.dart';
import '../repo/chats_repo_provider.dart';
import 'chats_state.dart';

final chatsStateNotifierProvider =
    StateNotifierProvider<ChatsStateNotifier, ChatsState>(
        (ref) => ChatsStateNotifier(ref));

class ChatsStateNotifier extends StateNotifier<ChatsState> {
  ChatsStateNotifier(this.ref)
      : _repo = ref.read(chatsRepoProvider),
        _user = ref.read(userStateNotifierProvider).maybeWhen(
              data: (user) => user,
              updating: (user) => user,
              orElse: () => throw 'User state management error',
            ),
        super(
          const ChatsInitializingState(),
        ) {
    _init();
  }

  final Ref ref;
  final ChatsRepo _repo;
  final User _user;

  void _init() async {
    final chats = await _repo.getChatsData(_user.uid);
    if (chats.isEmpty) {
      state = const ChatsNoChatsState();
      return;
    }
    _subscribeAndListen();
    state = ChatsSubscribedState(chats);
  }

  void _subscribeAndListen() {
    final stream = _repo.getChatsStreams(_user.uid);
    stream.listen((chats) => state = ChatsSubscribedState(chats));
  }
}