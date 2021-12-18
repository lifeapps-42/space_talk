import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../chats/models/chat_item.dart';
import '../../../utils/refresh_provider_on_user_changes.dart';
import 'main_screen_state.dart';

final mainScreenStateNotifierProvider =
    StateNotifierProvider<MainScreenStateNotifier, MainScreenState>(
        (ref) => MainScreenStateNotifier(ref));

class MainScreenStateNotifier extends StateNotifier<MainScreenState> {
  MainScreenStateNotifier(this.ref) : super(const MainScreenChatsState()) {
    refreshOnUserChanges(ref, mainScreenStateNotifierProvider);
  }

  final Ref ref;

  void goToConversation(ChatItem chat) {
    state = MainScreenConversationState(chat);
  }

  void goToChats() {
    state = const MainScreenChatsState();
  }
}
