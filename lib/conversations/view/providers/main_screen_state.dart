import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../chats/models/chat_item.dart';

part 'main_screen_state.freezed.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState.chats() = MainScreenChatsState;
  const factory MainScreenState.conversation(MainScreenConversationStateData data) =
      MainScreenConversationState;
}

class MainScreenConversationStateData {
  final ChatItem chatItem;
  final String? draftMessage;

  MainScreenConversationStateData({required this.chatItem, required this.draftMessage});
}
