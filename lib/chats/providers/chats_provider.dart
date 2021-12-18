import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../user/models/user.dart';
import '../../user/providers/user_provider.dart';
import '../../utils/refresh_provider_on_user_changes.dart';
import '../repo/chats_repo_provider.dart';
import 'chats_state.dart';

final chatsStateNotifierProvider =
    StateNotifierProvider<ChatsStateNotifier, ChatsState>(
        (ref) => ChatsStateNotifier(ref));

class ChatsStateNotifier extends StateNotifier<ChatsState> {
  ChatsStateNotifier(this.ref)
      : _repo = ref.read(chatsRepoProvider),
        _user = ref.read(userStateNotifierProvider.notifier).user,
        super(const ChatsInitializingState()) {
    assert(_user != null);
    _init();
    refreshOnUserChanges(ref, chatsStateNotifierProvider);
  }

  final Ref ref;
  final ChatsRepo _repo;
  final User? _user;

  void _init() async {
    final chats = await _repo.getChatsData(_user!.uid);
    _subscribeAndListen();
    state = ChatsSubscribedState(chats);
  }

  void _subscribeAndListen() {
    final stream = _repo.getChatsStreams(_user!.uid);
    stream.listen((chats) => state = ChatsSubscribedState(chats));
  }

  void createChat({required String text, required User companion}) {
    _repo.createChat(companion: companion, text: text);
  }
}
