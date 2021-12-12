import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/private_chat.dart';

part 'chats_state.freezed.dart';

@freezed
class ChatsState with _$ChatsState{
  const factory ChatsState.initializing() = ChatsInitializingState;
  const factory ChatsState.noChats() = ChatsNoChatsState;
  const factory ChatsState.subscribed(List<Chat> chats) = ChatsSubscribedState;
}