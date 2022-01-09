import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:space_talk/messages/models/message.dart';

import '../../models/messages_group_by_date_model.dart';
import '../../providers/conversation_provider.dart';
import '../../providers/conversation_state.dart';
import 'messages_smart_list.dart';
import 'providers/input_widget_size.dart';

class MessagesGroupedByDate extends HookConsumerWidget {
  const MessagesGroupedByDate({
    Key? key,
    required this.groupedMessages,
    required this.chatId,
    required this.scrollController,
    required this.messages, 
  }) : super(key: key);

  final List<GroupedMessages> groupedMessages;
  final List<Message> messages;
  final String chatId;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<ConversationState>(
      conversationStateNotifierProvider(chatId),
      (_, next) => next.whenOrNull(
        newMessagesEvent: (_) => HapticFeedback.lightImpact(),
      ),
    );
    return MessagesSmartList(
      messages: messages,
      groupedMessages: groupedMessages,
      chatId: chatId,
    );
  }
}

class InputPlaceholder extends ConsumerWidget {
  const InputPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = ref.watch(inputWidgetSizeNotifierProvider);

    return Container(
      height: height,
    );
  }
}
