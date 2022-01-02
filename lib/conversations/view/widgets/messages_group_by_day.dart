import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../widgets/keyboard_placeholder.dart';
import '../../models/messages_group_by_date_model.dart';
import '../../providers/conversation_provider.dart';
import '../../providers/conversation_state.dart';
import 'same_day_messages_list.dart';

class MessagesGroupedByDate extends ConsumerWidget {
  const MessagesGroupedByDate(
      {Key? key,
      required this.groupedMessages,
      required this.chatId,
      required this.scrollController})
      : super(key: key);

  final List<GroupedMessages> groupedMessages;
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
    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      itemCount: groupedMessages.length + 1,
      reverse: true,
      controller: scrollController,
      itemBuilder: (_, i) {
        if (i == 0) {
          return const KeyboardPlaceholder(
            correction: 55,
            minSize: 40,
          );
        }
        final group = groupedMessages[i - 1];
        return SameDayMessagesList(
          group: group,
          chatId: chatId,
          key: Key(
            group.date.toString(),
          ),
        );
      },
    );
  }
}
