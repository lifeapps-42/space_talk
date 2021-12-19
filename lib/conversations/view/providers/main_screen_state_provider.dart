import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:space_talk/conversations/providers/conversation_state_data.dart';

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

  final drafts = <String, String>{};

  void goToConversation(ChatItem chat) {
    final stateData = MainScreenConversationStateData(
      chatItem: chat,
      draftMessage: drafts[chat.id],
    );
    state = MainScreenConversationState(stateData);
  }

  void goToChats() {
    state = const MainScreenChatsState();
  }

  void setDraft(ChatItem chatItem, String draftMessage) {
     if (draftMessage.isNotEmpty) {
        drafts[chatItem.id] = draftMessage;
      }
  }

  ChatItem get chat => state.maybeWhen(
      conversation: (data) => data.chatItem,
      orElse: () => throw 'cant Send message from here');
}
