import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/chat_item.dart';

part 'chat_items_state.freezed.dart';

@freezed
class ChatItemsState with _$ChatItemsState{
  const factory ChatItemsState.loading() = ChatItemsLoadingState;
  const factory ChatItemsState.noChats() = ChatItemsNoItemsState;
  const factory ChatItemsState.subscribed(List<ChatItem> chatItems) = ChatItemsSubscribedState;
}