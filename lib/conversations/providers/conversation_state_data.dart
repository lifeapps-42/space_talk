import 'package:freezed_annotation/freezed_annotation.dart';

import '../../messages/models/message.dart';

part 'conversation_state_data.freezed.dart';

@freezed
class ConversationStateData with _$ConversationStateData{
 const factory ConversationStateData({
    required List<Message> messages,
    required bool hasMoreToFetch,
    required String chatId,
  }) = _ConversationStateData;
}
