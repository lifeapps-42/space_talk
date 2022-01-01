import 'package:freezed_annotation/freezed_annotation.dart';

import '../../messages/models/message.dart';
import '../models/messages_group_by_date_model.dart';

part 'conversation_state_data.freezed.dart';

@freezed
class ConversationStateData with _$ConversationStateData{
const ConversationStateData._();
 const factory ConversationStateData({
    required List<Message> messages,
    required List<GroupedMessages> groupedMessages,
    required bool hasMoreToFetch,
    required String chatId,
  }) = _ConversationStateData;
}
